Fork of https://github.com/adamdruppe/webassembly

CHANGES:

- straight build using Dub+LDC2:

`dub --force --verbose --compiler=ldc2`

- removed `serve.d` stuff
- to test examples:

`python3 -m http.server 8080`

and then browse to `http://localhost:8080/examples/`

Original README:

This repo contains my webassembly stuff, intended for use with ldc.

arsd-webassembly is the library code, including partial source ports
of some libraries I use and a minimal druntime for use on the web.
You should compile with these modules instead of the real libraries.

server is a little web server and the other bridge code in javascript
and html. Of course you don't need to use my webserver.

This is EXTREMELY MINIMAL. I only wrote what I needed for my demo. Your
use cases will probably not work.
