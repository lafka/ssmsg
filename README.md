# SSMSG

A simple messaging service.

We're building a application that supports the following:

 1. Post a json blob in the form `{"to": "user@example.com", "message": "Hello User!"}`
 2. Retrieve latest messages for one recipient by their ID, ie: `user@example.com`

Both should be available as HTTP endpoints and once completed the result should be the
following:


## Example: Creating some messages

```
$ curl localhost:4000/message -x POST -d '{"to": "alice@example.com", "message": "Hello Alice!"}`
{"status": "OK"}

$ curl localhost:4000/message -x POST -d '{"to": "bob@example.com", "message": "Hello Bob from Alice!"}`
{"status": "OK"}

$ curl localhost:4000/message -x POST -d '{"to": "bob@example.com", "message": "Hello Bob from Eve!"}`
{"status": "OK"}
```

## Example: Listing all messages for the accounts

```
$ curl localhost:4000/message/bob@example.com
[
  {"to": "bob@example.com", "message": "Hello Bob from Alice!"},
  {"to": "bob@example.com", "message": "Hello Bob from Eve!"}
]

$ curl localhost:4000/message/alice@example.com
[
  {"to": "bob@example.com", "message": "Hello Alice!"},
]
```
