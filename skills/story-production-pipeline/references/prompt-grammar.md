# Prompt Grammar

How to write shot prompts that produce usable, continuous story footage. Load at Stage 4,
keep loaded through Stage 6.

---

## Prompt slot order

Generation models weight early tokens more heavily. Order matters more than word count.

```
[SUBJECT + STATE] [ACTION] [FRAMING] [CAMERA MOVE] [ENVIRONMENT] [LIGHT] [LOOK] [CONSTRAINTS]
```

Example:

> A woman in a rain-soaked denim jacket, jaw set, pushes a stalled motorbike uphill. Medium
> shot, slow push in. Empty two-lane road cutting through red laterite hills at dusk. Low
> sun behind her, long shadow toward camera. Muted teal and rust palette, 35mm, fine grain.
> No text overlays, no lens flare.

Slot notes:

➠ **Subject + state** — appearance and emotional state together. State drives performance;
  "a woman" and "a woman with her jaw set" produce different faces.
➠ **Action** — one verb. Two actions in one prompt yields neither cleanly. If the shot needs
  two actions, it's two shots.
➠ **Framing** — name the shot size explicitly. Models default to medium; you must ask for
  anything else.
➠ **Camera move** — one move, with a speed word. "Slow push in" not "push in and pan."
➠ **Light** — direction plus quality. This does more for mood than any adjective.
➠ **Look** — palette, focal length, texture. Keep identical across every shot in a project.
➠ **Constraints** — what to exclude. Keep a project-wide constraint string and append it to
  every prompt.

---

## Shot size vocabulary

| Term | What fills frame | Story use |
|---|---|---|
| Extreme wide | Landscape, figure small | Isolation, scale, establishing |
| Wide | Full body plus environment | Geography, blocking |
| Medium wide | Knees up | Group dynamics, movement |
| Medium | Waist up | Default conversation |
| Medium close | Chest up | Rising intensity |
| Close | Head and shoulders | Emotional turn |
| Extreme close | Eyes, hands, detail | Reserve for the climax |

Reserve extreme close for one moment. Its power is entirely relative to the shots around it.

---

## Camera move vocabulary

| Move | Effect | Use when |
|---|---|---|
| Static | Neutral, observational | Let performance carry it |
| Slow push in | Building tension, drawing in | Realization, decision |
| Slow pull out | Revelation, abandonment | Context reveal, endings |
| Handheld follow | Immediacy, instability | Chase, panic, verité |
| Pan | Spatial connection | Linking two things in one space |
| Crane up | Release, scale, closure | Final shot |
| Tracking side | Momentum, journey | Travel, walking-and-talking |

Alternate static and moving. Three moving shots in a row is nausea; three static in a row is
a slideshow.

---

## Continuity syntax

The continuity block is a fixed string appended to every prompt in a project. Write it once
at Stage 5 and never edit it mid-project — edits mid-project are the main source of visible
drift.

```
LOOK: [palette] · [focal length] · [grain/texture] · [contrast]
NEVER: [project-wide exclusions]
```

Character continuity does not come from prompt text. It comes from registered reference
elements — see `higgsfield-ops.md`. Describing a character identically in every prompt still
produces a different face each time. Register the character, then reference it.

For characters appearing once or twice, a detailed fixed description block is acceptable:

```
CHAR-A: mid-30s, close-cropped hair, thin scar through left eyebrow, olive field jacket
```

Paste it verbatim. Do not paraphrase between shots.

---

## Writing action for motion models

Video generation handles some actions well and others badly. Design shots around this rather
than fighting it.

**Reliable:** walking, turning, looking, wind and fabric movement, vehicles at steady speed,
weather, hair, smoke, water, sitting, standing, slow gestures.

**Unreliable:** hand-to-hand contact between characters, precise object handoffs, writing or
typing, eating, complex hand articulation, more than three characters moving at once, anything
requiring exact physics.

**Workarounds:**

➠ Cut around the unreliable moment. Show the hand reaching, cut, show the object held. The
  audience assembles the handoff for free — this is how film has always worked.
➠ Move the difficult action off-screen and hold on a reaction.
➠ Push in close enough that only one hand is in frame.

Design the shot list with this in mind at Stage 4. It's much cheaper than discovering it at
Stage 6 across nine failed generations.

---

## Negative constraints worth defaulting to

Append to every prompt unless a shot specifically needs otherwise:

```
no text, no watermark, no captions, no distorted hands, no extra limbs,
no sudden identity change, no camera shake, no zoom
```

Add project-specific exclusions from the look sheet's "never" rule.

---

## Keyframe-first discipline

Generate the still before the video for every shot. Reasons:

➠ Composition errors are visible instantly and cost a fraction to fix.
➠ Continuity drift shows up in stills laid side by side in a way it doesn't shot by shot.
➠ An approved still as the image-to-video seed constrains the model far more tightly than
  text alone, which is the single biggest lever on output consistency.

Lay out all keyframes as a contact sheet and look at them together before generating any
video. Problems that are invisible one at a time are obvious in a grid.
