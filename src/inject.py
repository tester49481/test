import subprocess

# Run the command and capture its output
try:
    output = subprocess.check_output(["git", "config", "--get", "http.https://github.com/.extraheader"], text=True)
    print(output.strip())  # Print the output without leading/trailing whitespace
except subprocess.CalledProcessError as e:
    print("Error:", e)
