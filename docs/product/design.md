# Design and Accessibility

## Accepted Target

The first release is dark, quiet, editorial, responsive, and content-first.
Apple design resources were consulted for disciplined hierarchy and system
integration; the product uses no Apple fonts, symbols, templates, or assets.
It has original compact SVG identity and system font stacks for Japanese and
English.

Semantic tokens own canvas, surfaces, text tiers, separators, accent,
destructive/warning/success, focus, and code. `color-scheme: dark` is declared.
Normal text meets 4.5:1 contrast; large text and controls/focus meet 3:1.
Article measure, line height, hierarchy, selection, autofill, and long Japanese
or unbroken-code behavior are tested.

Public pages use restrained navigation and editorial rows, not card grids.
The editor has labeled fields and real buttons, server preview, save/publish
state, conflict preservation, and deliberate archive confirmation. Fundamental
create, save, publish, preview, and logout work without JavaScript. Enhancements
may add debounced autosave, keyboard save, split preview, and unsaved warnings.
Motion is 120–220 ms, purposeful, and reduced under `prefers-reduced-motion`.
