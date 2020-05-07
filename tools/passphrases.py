
import random

def passEngine(length=64):

    """
    random base64 Passwords
    """
    passChars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
    return ''.join((random.choice(passChars) for i in range(length)))


def uniqPasses(limit=100000):
    
    passData = []
    
    for i in range(0, limit):
        password = passEngine(64) + "\n"
        
        while password in passData:
            password = passEngine(64) + "\n"

        passData.append(password)
        print(password, end="")

    return passData

with open(".pass", "a+") as pb:
    print("Saving ...")
    for password in uniqPasses(100000):
        pb.write(password)

