import os

github_token = os.environ.get('GITHUB_TOKEN')

if github_token:
    print("GitHub Token:", github_token)
else:
    print("GitHub Token not found.")
