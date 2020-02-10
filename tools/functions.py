
def isPrime(n):
    return all([n % i != 0 for i in range(2,int(n**.5)+1)])

