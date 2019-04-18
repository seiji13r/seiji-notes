# Authentication <!-- omit in toc -->
- [Authentication Types](#authentication-types)
  - [Basic Authentication](#basic-authentication)
    - [Pros](#pros)
    - [Cons](#cons)
  - [Session Authentication](#session-authentication)
    - [Pros](#pros-1)
    - [Cons](#cons-1)
  - [Token Authentication](#token-authentication)
    - [Pros](#pros-2)
    - [Cons](#cons-2)
- [JWT](#jwt)
- [Reference](#reference)

# Authentication Types
* Basic Authentication
* Session Authentication
* Token Authentication
* Remote User Authentication

## Basic Authentication

The Credentials are sent in the HTTP Header.

"rest_framework.authentication.BasicAuthentication"

### Pros
* Simple
### Cons
* Every request look up Session Object
* Credentials passed in clear text
* Only suitable for testing
* Must use HTTPS

## Session Authentication

Authentications is done just once and a Cookie is created with a Session.

"rest_framework.authentication.SessionAuthentication"

### Pros
* Secure
* Only Validate user once
### Cons
* Not good for multiple front-ends
* Hard to keep up-to-date

## Token Authentication

Authentications is done just once and a Token is created.

"rest_framework.authentication.TokenAuthentication"

### Pros
* Easy to Scale
* Only Validate user once
### Cons
* Large tokens hurt performance
* Tokens never expire

# JWT

(JWT)[https://jwt.io/]

# Reference
(DjangoCon US 2018 - Finally Understand Authentication in Django REST Framework by William S. Vincent)[https://youtu.be/pY-oje5b5Qk]