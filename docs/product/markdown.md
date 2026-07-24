# Markdown Contract

## Current corpus evidence

The live predecessor has 67 note bodies: all use ATX headings; 10 use unordered
lists, 2 ordered lists, 1 quote, 2 fenced blocks, 6 inline-code bodies, 2
strong-emphasis bodies, 5 links, and 12 images. Five contain raw HTML. There
are no tables, task lists, or `javascript:`/`data:` literals detected. Twelve
live public notes contain images; root-relative links are the migration concern.

## Accepted Target

One deterministic `.lkjscript` renderer serves preview and publication. It
supports paragraphs, ATX headings, lists, quotes, emphasis, strong, inline and
fenced code, links, safe migrated images, thematic breaks, and documented line
breaks. Raw HTML is escaped. Text is escaped before HTML emission; only `https`,
`http`, optional `mailto`, and safe root-relative paths are accepted after
normalization. Encoded schemes, controls, event attributes, styles, embeds, and
unsafe image URLs are neutralized.

The renderer emits semantic HTML and uses a bounded builder, not quadratic
string append. Corpus and synthetic 1 KiB, 8 KiB, 64 KiB, and largest-body
benchmarks own performance evidence.
