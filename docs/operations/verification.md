# Verification Tiers

## Tier 0: edit

Affected `.lkjscript` compile, focused fixture, touched-doc link/syntax check,
and `git diff --check`.

## Tier 1: coherent change

Affected module tests, parser/Markdown/storage/auth fixtures, startup, and one
real request flow.

## Tier 2: repository

Full source compilation, docs topology/limits, placeholder scan, app tests,
migration fixture, image build, real store smoke, and restart smoke.

## Tier 3: release

Runtime gate when changed, Compose acceptance, browser/accessibility/no-JS,
migration dry-run/idempotency, backup/restore, load/resource measurement,
production-equivalent image, and Nginx validation.

## Tier 4: production

Health/ready, edge/public routes, migrated URLs, authenticated lifecycle,
second-user isolation, logs, latency, restart, and rollback readiness.

Each test has a distinct contract owner. Required adversarial coverage includes
XSS, URL schemes, traversal, injection, CSRF, session lifecycle, throttling,
proxy headers, framing ambiguity, disk-full/interruption, tenancy, and
projection privacy.
