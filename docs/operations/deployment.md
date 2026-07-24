# Deployment Contract

## Accepted Target

A non-root, minimal multi-stage image is built from exact application and
`lkjscript` commits and immutable runtime/image inputs. It contains only the
verified runtime, required standard-library closure, app source/bundle,
first-party assets, and required dynamic libraries. No Git, Cargo state,
tests, exports, or secrets enter production.

Compose owns one app data tree, imported immutable assets, public projection,
backup directory, and operator-only migration staging. The app has a private
internal port; edge Nginx is the only public boundary. Root filesystem is
read-only where compatible, writable mounts are narrow, capabilities dropped,
no-new-privileges enabled, resources bounded, logs rotated, and health checked.

The final exact checkout, Compose source, data paths, port, app/runtime SHAs,
image ID/digest, and start evidence are recorded only after green deployment.
