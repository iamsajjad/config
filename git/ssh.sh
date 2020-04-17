
ssh-keygen -t rsa -b 2048 -C "email@example.com"

# or 

ssh-keygen -o -t rsa -b 4096 -C "email@example.com"

# check passphrase

ssh-keygen -y
