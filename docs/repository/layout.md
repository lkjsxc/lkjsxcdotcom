# Repository Layout

## Current

The root contains only license, agent guidance, repository configuration, docs,
and future owned directories `src/`, `assets/`, `meta/`, and `tests/`.

## Accepted Target

- `src/app`: process startup and command dispatch.
- `src/config`: validated configuration.
- `src/domain`, `src/auth`, `src/http`, `src/storage`: product policy.
- `src/markdown`, `src/render`, `src/projection`: deterministic public output.
- `src/migration`, `src/ops`: import and operator policies.
- `assets`: authored first-party static assets only.
- `meta`: Docker/Compose, verification scripts, and immutable build metadata.
- `tests`: non-secret fixtures and focused contract tests.

Authored Markdown and `.lkjscript` files are at most 200 lines. Each language
source directory observes the runtime immediate-entry limit. Split by ownership,
not arbitrary line count. No universal utility module, production export, or
runtime state belongs in the tree.
