# Mizan · ميزان

A small tool for measuring proportion in Arabic calligraphy.

Everything in the classical system is measured against one reference — the height
of the alif. Mizan asks you for that height once, builds a grid from it, and then
reports every line and circle you draw as a fraction of the alif, with a score for
how close the fit is.

**One file, no install.** Download `index.html` and open it in a browser. Nothing is
uploaded anywhere; the image stays on your machine.

## Using it

1. **Open image** (or drag one onto the canvas, or paste with `Ctrl+V`).
2. Pick the **Alif** tool and drag from the top of an alif to its foot. Hold `Shift`
   to lock the measurement to true vertical.
3. A grid appears, subdivided into equal parts of that alif — 8 by default, with
   5 and 9 offered because those are the usual nuqta counts for naskh and thuluth.
   Heavier lines fall on whole alifs.
4. Draw with the **Line** and **Circle** tools. Circles are drawn from the centre
   outwards and are always true circles.
5. Each shape is labelled with its ratio to the alif — `1/4 (98%)` means the shape
   is nearest to a quarter of an alif and sits within 98% of exactly that.
6. **Export PNG** writes the image, the grid and your marks out at the original
   resolution of the picture.

## Reading the numbers

The fraction shown is the closest simple fraction of an alif, searched over every
denominator up to the limit you set (quarters through sixteenths; eighths by
default). The percentage is how near the true measurement is to that fraction:

```
accuracy = (1 − |measured − fraction| / fraction) × 100
```

So `1/4 (98%)` is a near-exact quarter. `1/2 (75%)` means the nearest fraction
available was a half, but the shape is well off it. Widen the denominator limit if
you want finer fractions; narrow it if you only care about the simple divisions.

The Measurements panel also gives the raw pixel length and the exact decimal
ratio, which is often the more honest number of the two.

## Controls

| | |
|---|---|
| `V` `A` `L` `C` | Select, Alif, Line, Circle |
| `Shift` while drawing | snap a line to 15° steps; snap an alif to vertical |
| Drag empty space, or hold `Space` | pan |
| Scroll | zoom · `0` fits the image to the view |
| `Backspace` | delete the selection |
| `Ctrl+Z` | undo |
| `G` | show/hide the grid |

Clicking a colour recolours the selected shape as well as setting the colour for
the next one. The palette is deliberately fluorescent so the marks stay legible
over ink and toned paper. All strokes share one thickness, set in the Ink panel.

## Notes

- Measurements are in image pixels, so they are only as accurate as the photograph.
  A page shot at an angle will not give honest ratios — shoot flat-on.
- **Circles read as** switches the measured quantity between diameter and radius.
- **Tilt grid to alif** rotates the grid to follow a slanted alif rather than the
  page edges.
- The app opens on a sample specimen set in [Amiri](https://github.com/alif-type/amiri),
  with the alif already measured and a circle whose diameter is that alif — the
  classical dā'ira. Open your own image to replace it.

## Licence

MIT — see [LICENSE](LICENSE).
