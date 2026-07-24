# Internal HTTP Contract

## Accepted Target

The edge owns public TLS, HTTP/2/3 policy, compression, request buffering, and
rate limits. The application implements a bounded HTTP/1.1 internal contract:
request line, method, target, headers, body, per-connection requests, idle/total
time, concurrent connections, and output are capped.

Reject NUL, invalid text UTF-8, invalid percent encoding, traversal, backslash
confusion, absolute targets, invalid headers, duplicate conflicting
`Content-Length`, unsupported transfer encoding, TE+CL ambiguity, unexpected
bodies, unsupported methods, incomplete requests, and overlong input.

Responses have status, content type/charset, safe length/framing, bounded errors,
cache policy, and no CR/LF injection. A slow connection cannot starve the site:
close-after-response, bounded keep-alive, and evented/multiple-worker models are
measured. Internal errors never expose VM traces, storage details, paths, or
secrets.
