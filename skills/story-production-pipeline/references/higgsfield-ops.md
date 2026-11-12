# Higgsfield Operations

Call sequences for Stages 5 and 6. Higgsfield tools are deferred — run `tool_search` to load
definitions before calling anything, and use the exact parameter names returned rather than
the ones remembered from a previous session. Schemas change.

---

## Before anything

```
tool_search("higgsfield generate video image")
tool_search("higgsfield reference elements characters")
```

Then check state:

➠ `list_workspaces` / `select_workspace` — elements are scoped per workspace. Registering a
  character in the wrong workspace means it's invisible when you go to use it.
➠ `balance` — credits and plan. Get this before estimating cost for the user.
➠ `models_explore` — available generation models. Don't assume a model from a past project is
  still the right choice; check what's live.

---

## Stage 5 — Registering recurring entities

The purpose is a protagonist whose face is the same in shot 3 and shot 27. Nothing else in
this pipeline matters more to whether the finished video is watchable.

**1. Inventory.** Pull unique entities from the continuity tags column of the shot list.
Classify: characters, locations, hero props.

**2. Check for existing.**

```
show_characters              → trained identity models (Soul Characters)
show_reference_elements      → characters / environments / props in this workspace
```

Reuse beats recreate. If the user has built in this world before, the elements are already
there and free.

**3. Generate reference frames.** For each new recurring character, generate a clean,
well-lit, neutral-expression frame — front and three-quarter. Not a story shot. Reference
frames should be boring; dramatic lighting in a reference frame propagates into every
downstream shot.

**4. Register.** Create the element or Soul Character from the approved reference. Rule of
thumb: anything appearing in more than three shots gets registered. Anything appearing in one
or two can ride on a fixed description block.

**5. Consistency test — do not skip.** Generate the registered character in two different
framings and lighting setups. Put them side by side. If the face reads as two people, fix it
now: better reference frame, stronger registration, or a design change that makes the
character easier to hold (distinctive silhouette, consistent wardrobe, hat, glasses, scar).

Write every element ID into STORY.md section 05. These IDs are the reusable asset — the next
story in the same world starts from them.

---

## Stage 6 — Generation sequence

### Cost estimate first

Count shots × keyframes × expected retries, check against `balance`, and give the user a
number before firing anything. Assume roughly 1.4 attempts per shot on average; some shots
land first try and some take four.

### Keyframes

```
generate_image_batch   → 1–12 per call
jobs_wait              → poll without opening widgets
```

Batch by scene. Present as a contact sheet. Get approval before any video generation. Reject
and regenerate at this stage freely — stills are cheap relative to video.

### Video

```
generate_video_batch   → seeded from approved keyframes
jobs_wait
```

Batch by scene, not by whole film, so the user can stop cleanly after any batch. Confirm
before each batch fires.

`presets_show` lists image-to-video presets — worth checking whether a preset matches the
intended camera move before hand-writing motion into the prompt. Presets generally produce
more reliable camera work than prompt text does.

### Audio

```
list_voices      → check register before finalizing narration at Stage 3
generate_audio   → narration and dialogue
```

One voice ID per character for the entire project, recorded in STORY.md. Switching voices
between shots is as jarring as switching faces.

### Optional passes

➠ `upscale_video` — final delivery quality, after shots are locked. Upscaling rejected takes
  wastes credits.
➠ `reframe` — generate 16:9 and derive 9:16 rather than generating twice.
➠ `remove_background` — compositing a character into a different plate.
➠ `motion_control` — drive an existing character still with motion from a reference video.
  Useful when a specific movement matters and prompt text won't get there.

### Logging

Every job: shot number, job ID, output URL, accept/reject, attempt count. Write to STORY.md
section 06 as you go, not at the end. A session that ends unexpectedly with unlogged job IDs
loses real money.

---

## Failure handling

Two prompt-adjustment attempts per shot. On the third failure, stop adjusting the prompt and
change the shot.

Common failures and the actual fix:

| Symptom | Fix |
|---|---|
| Face drifts between shots | Registered element missing or weak — go back to Stage 5 |
| Hands mangled | Reframe to exclude hands, or cut on the action |
| Character morphs mid-clip | Shorten the clip; long durations drift more |
| Camera move ignored | Use a preset instead of prompt text |
| Composition ignores framing | Fix at keyframe stage, then seed the video from it |
| Two characters interacting fails | Split into two single shots and cut between them |

The last one is the most common and the most under-used fix. Coverage solves what prompting
can't.

---

## Long-poll etiquette

Use `generate_*_batch` plus `jobs_wait` rather than single `generate_*` calls with widgets
when producing a shot list. Widgets are good for exploring one idea; batches are good for
producing forty shots. Report progress to the user in plain language — scene names and
counts, not job IDs.
