# Maintenance

Use one deliberate Cargo target directory for runtime work, bounded BuildKit
cache IDs for this mission, and remove only reproducible mission-created
artifacts after evidence is recorded. Inspect filesystem, inodes, Docker, ZFS,
workspace targets, and predecessor data size before major builds, exports,
backups, or images.

Never broad-prune Docker, volumes, BuildKit, or ZFS. Do not merge unrelated
dirty work. Deploy only a clean exact commit and record the result.
