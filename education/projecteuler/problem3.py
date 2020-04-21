#!/usr/bin/env python

"""
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
"""

# fuck me!
# http://en.wikipedia.org/wiki/Prime_factor
# http://en.wikipedia.org/wiki/Primality_testing

# sieve
# http://en.wikipedia.org/wiki/Trial_division
# copy & paste
def trial_division(n):
    """Return a list of the prime factors for a natural number."""
    if n == 1: return [1]
    primes = prime_sieve(int(n**0.5) + 1)
    prime_factors = []
 
    for p in primes:
        if p*p > n: break
        while n % p == 0:
            prime_factors.append(p)
            n //= p
    if n > 1: prime_factors.append(n)
 
    return prime_factors


def prime_sieve(n):
    # using psuedocode: 
    #   http://en.wikipedia.org/wiki/Sieve_of_Eratosthenes
    #   http://en.wikipedia.org/wiki/Trial_division
    


def primefactors(num):
    return None


if __name__=="__main__":
    # problem 3
    #primefactors()


