
import os
import time

username = ''
password = ''
repository = ''

credentials = 'https://{}:{}@{}'.format(username, password, repository)

commands = [
    'git add --all',
    'git commit --all -m "{}"'.format(time.ctime()),
    'git push {} master'.format(credentials)
]

for command in commands:
    os.system(command)

