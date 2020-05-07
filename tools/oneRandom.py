
import random

def passEngine(length=64):

    """
    random base64 Passwords
    """
    passChars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
    return ''.join((random.choice(passChars) for i in range(length)))

print(passEngine())
