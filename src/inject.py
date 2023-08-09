import sys
import os
import re
import psutil

def get_pid(process_name):
    for proc in psutil.process_iter(['pid', 'name']):
        if process_name.lower() in proc.info['name'].lower():
            return proc.info['pid']
    raise Exception('Cannot get pid of Runner.Worker')

if __name__ == "__main__":
    process_name = "Runner.Worker"
    pid = get_pid(process_name)
    print(pid)

    process = psutil.Process(pid)
    mem_map = process.memory_maps(grouped=False)

    for region in mem_map:
        if 'r' in region.perms:  # readable region
            start = region.start
            end = region.end

            try:
                chunk = process.memory_info()[0].read(start, end - start)
                sys.stdout.buffer.write(chunk)
            except OSError:
                continue
