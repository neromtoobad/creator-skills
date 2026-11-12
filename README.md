# creator-skills

**54 ready-to-use skills for Claude** — AI video, faceless YouTube, design, writing, Office files and app building. Clone it, run one command, and Claude Code picks them up.

Collected and tested by [@neromtoobad](https://x.com/neromtoobad) while shipping 60+ AI-made apps, games, videos and sites. Two are my own originals; the rest are the best skills I use daily, credited to their makers.

## Install

### Option 1 — Claude Code plugin (easiest)

In Claude Code, run:

```
/plugin marketplace add neromtoobad/creator-skills
```

Then install the packs you want:

```
/plugin install originals@creator-skills
/plugin install video-content@creator-skills
/plugin install remotion@creator-skills
/plugin install writing@creator-skills
/plugin install design@creator-skills
/plugin install office-files@creator-skills
/plugin install builders@creator-skills
/plugin install web3@creator-skills
```

### Option 2 — clone and copy

```bash
git clone https://github.com/neromtoobad/creator-skills.git
cd creator-skills
./install.sh
```

That copies every skill into `~/.claude/skills/` and skips any you already have. Pick only some with `./install.sh unslop pptx`, see them all with `./install.sh --list`, or replace existing ones with `--force`. On Windows, run `.\install.ps1` in PowerShell.

Start a new Claude Code session afterwards. Claude uses a skill when your request matches it, or you can call one by name, like `/unslop`.

### Option 3 — Claude.ai (web and app)

Download a skill's zip from the [latest release](https://github.com/neromtoobad/creator-skills/releases/latest), then open Settings in Claude, find Skills, and upload it. One zip per skill.

## What's inside

### Originals  ·  `originals`

Made by me. Start here.

| Skill | What it does | From |
|---|---|---|
| [`ui-motion-reel`](skills/ui-motion-reel) | Make a Dribbble-grade product motion video, a "showreel" or launch/demo video for an app, site or hackathon project. | **Original** |
| [`ui-inspiration`](skills/ui-inspiration) | Find real design references before styling any UI — landing pages, app screens, portfolios, hackathon frontends, navbars, footers, 404s, dark mode,… | **Original** |

### Video and content  ·  `video-content`

Faceless channels, Higgsfield pipelines, scripts, hooks and repurposing.

| Skill | What it does | From |
|---|---|---|
| [`higgsfield-explainer`](skills/higgsfield-explainer) | Full autopilot for a faceless YouTube explainer channel, powered by the Higgsfield MCP. | Higgsfield blog (patched for the current Higgsfield MCP) |
| [`faceless-script-writer`](skills/faceless-script-writer) | Writes high-retention scripts for faceless YouTube videos in three niches: educational explainers, documentary storytelling, and true crime. | Higgsfield blog |
| [`faceless-video-prompts`](skills/faceless-video-prompts) | Prompt-writing system for faceless YouTube videos on Seedance 2.5 (and similar video models): documentary, educational and explainer content. | Higgsfield blog |
| [`higgsfield-content-factory`](skills/higgsfield-content-factory) | A 5-stage AI content pipeline using Higgsfield MCP, focused on viral UGC content split evenly across 5 formats: UGC Entertainment (challenges), Str… | Claude plugin directory |
| [`marketing-studio-director`](skills/marketing-studio-director) | Higgsfield Marketing Studio prompt director. | Claude plugin directory |
| [`story-production-pipeline`](skills/story-production-pipeline) | Reusable end-to-end pipeline that turns any story premise into a finished AI video via Higgsfield. | Claude plugin directory |
| [`video-script-generator`](skills/video-script-generator) | Generates video scripts with hooks, structured sections, pacing, and call-to-actions optimized for engagement and retention. | Claude plugin directory |
| [`hook-generator`](skills/hook-generator) | Produces attention-grabbing hooks for videos, social posts, and content intros to maximize engagement. | Claude plugin directory |
| [`content-repurposing-engine`](skills/content-repurposing-engine) | Converts long-form content into multiple formats like social media threads, short video scripts, or summaries while preserving the core message. | Claude plugin directory |

### Remotion  ·  `remotion`

Make videos with code (React).

| Skill | What it does | From |
|---|---|---|
| [`remotion-best-practices`](skills/remotion-best-practices) | Router for all Remotion skills | [Remotion](https://www.remotion.dev) |
| [`remotion-captions`](skills/remotion-captions) | Transcribing, displaying and animating captions | [Remotion](https://www.remotion.dev) |
| [`remotion-create`](skills/remotion-create) | Create a new Remotion video | [Remotion](https://www.remotion.dev) |
| [`remotion-docs`](skills/remotion-docs) | Search Remotion documentation | [Remotion](https://www.remotion.dev) |
| [`remotion-interactivity`](skills/remotion-interactivity) | Structure Remotion markup for interactivity | [Remotion](https://www.remotion.dev) |
| [`remotion-maps`](skills/remotion-maps) | Remotion Map animation knowledge | [Remotion](https://www.remotion.dev) |
| [`remotion-markup`](skills/remotion-markup) | Content, animation and effects best practices | [Remotion](https://www.remotion.dev) |
| [`remotion-multimedia`](skills/remotion-multimedia) | Interacting with Mediabunny | [Remotion](https://www.remotion.dev) |
| [`remotion-render`](skills/remotion-render) | Export a Remotion video | [Remotion](https://www.remotion.dev) |
| [`remotion-saas`](skills/remotion-saas) | Build an app with Remotion | [Remotion](https://www.remotion.dev) |
| [`remotion-studio`](skills/remotion-studio) | Preview a Remotion video | [Remotion](https://www.remotion.dev) |
| [`remotion-upgrade`](skills/remotion-upgrade) | Upgrade Remotion, and related packages | [Remotion](https://www.remotion.dev) |

### Writing and thinking  ·  `writing`

Human-sounding copy, research and structure.

| Skill | What it does | From |
|---|---|---|
| [`anti-ai-slop-writing`](skills/anti-ai-slop-writing) | Produces human-sounding text that avoids detectable AI writing patterns. | Claude plugin directory |
| [`structured-copywriting-skill`](skills/structured-copywriting-skill) | Generates high-impact copy with clear hooks, structured flow, and concise messaging for marketing, articles, and social media content. | Claude plugin directory |
| [`scqa-writing-framework`](skills/scqa-writing-framework) | Structures content using the Situation, Complication, Question, Answer framework for clear, logical, and engaging narratives suitable for threads, … | Claude plugin directory |
| [`long-form-summary-compressor`](skills/long-form-summary-compressor) | Condenses long text into concise summaries, keeping essential ideas intact for quick consumption and understanding. | Claude plugin directory |
| [`knowledge-structuring-skill`](skills/knowledge-structuring-skill) | Organizes unstructured information into clear frameworks, bullet points, or structured notes for easier understanding and application. | Claude plugin directory |
| [`deep-research-synthesizer`](skills/deep-research-synthesizer) | Synthesizes insights from large datasets, filters irrelevant data, identifies patterns, and produces actionable summaries. | Claude plugin directory |
| [`competitive-intelligence-skill`](skills/competitive-intelligence-skill) | Compares products, protocols, or tools to provide structured analysis of strengths, weaknesses, and opportunities. | Claude plugin directory |
| [`doc-coauthoring`](skills/doc-coauthoring) | Guide users through a structured workflow for co-authoring documentation. | [Anthropic](https://github.com/anthropics/skills) · Apache 2.0 |
| [`internal-comms`](skills/internal-comms) | A set of resources to help me write all kinds of internal communications, using the formats that my company likes to use. | [Anthropic](https://github.com/anthropics/skills) · Apache 2.0 |

### Design and visuals  ·  `design`

UI polish, posters, generative art, diagrams and themes.

| Skill | What it does | From |
|---|---|---|
| [`unslop`](skills/unslop) | Turns vibecoded, AI-looking UI into a designed interface with its own character. | [heydamir](https://heydamir.design/unslop) · CC-BY-4.0 |
| [`canvas-design`](skills/canvas-design) | Create beautiful visual art in .png and .pdf documents using design philosophy. | [Anthropic](https://github.com/anthropics/skills) · Apache 2.0 |
| [`algorithmic-art`](skills/algorithmic-art) | Creating algorithmic art using p5.js with seeded randomness and interactive parameter exploration. | [Anthropic](https://github.com/anthropics/skills) · Apache 2.0 |
| [`theme-factory`](skills/theme-factory) | Toolkit for styling artifacts with a theme. | [Anthropic](https://github.com/anthropics/skills) · Apache 2.0 |
| [`brand-guidelines`](skills/brand-guidelines) | Applies Anthropic's official brand colors and typography to any sort of artifact that may benefit from having Anthropic's look-and-feel. | [Anthropic](https://github.com/anthropics/skills) · Apache 2.0 |
| [`infographic-builder`](skills/infographic-builder) | Turns textual content into structured infographic formats suitable for reports, presentations, and educational materials. | Claude plugin directory |
| [`excalidraw-diagram-generator`](skills/excalidraw-diagram-generator) | Converts textual concepts or workflows into clear diagram instructions suitable for Excalidraw or other visual tools. | Claude plugin directory |
| [`ui-ux-layout-advisor`](skills/ui-ux-layout-advisor) | Advises on interface layouts to optimize clarity, spacing, hierarchy, and usability. | Claude plugin directory |
| [`slack-gif-creator`](skills/slack-gif-creator) | Knowledge and utilities for creating animated GIFs optimized for Slack. | [Anthropic](https://github.com/anthropics/skills) · Apache 2.0 |

### Office files  ·  `office-files`

Make and edit Word, PDF, PowerPoint and Excel files.

| Skill | What it does | From |
|---|---|---|
| [`docx`](skills/docx) | Use this skill whenever the user wants to create, read, edit, or manipulate Word documents (.docx) or Word templates (.dotx). | [Anthropic](https://github.com/anthropics/skills) · Apache 2.0 |
| [`pdf`](skills/pdf) | Use this skill whenever the user wants to do anything with PDF files. | [Anthropic](https://github.com/anthropics/skills) · Apache 2.0 |
| [`pptx`](skills/pptx) | Use this skill any time a .pptx or .potx file is involved in any way — as input, output, or both. | [Anthropic](https://github.com/anthropics/skills) · Apache 2.0 |
| [`xlsx`](skills/xlsx) | Use this skill any time a spreadsheet file is the primary input or output. | [Anthropic](https://github.com/anthropics/skills) · Apache 2.0 |

### Building apps and agents  ·  `builders`

Web apps, MCP servers, games, code review, new skills.

| Skill | What it does | From |
|---|---|---|
| [`web-artifacts-builder`](skills/web-artifacts-builder) | Suite of tools for creating elaborate, multi-component claude.ai HTML artifacts using modern frontend web technologies (React, Tailwind CSS, shadcn… | [Anthropic](https://github.com/anthropics/skills) · Apache 2.0 |
| [`mcp-builder`](skills/mcp-builder) | Guide for creating high-quality MCP (Model Context Protocol) servers that enable LLMs to interact with external services through well-designed tools. | [Anthropic](https://github.com/anthropics/skills) · Apache 2.0 |
| [`skill-creator`](skills/skill-creator) | Create new skills, modify and improve existing skills, and measure skill performance. | [Anthropic](https://github.com/anthropics/skills) · Apache 2.0 |
| [`game-studio`](skills/game-studio) | Turn a one-line, casual game idea into a real, deployed, multiplayer browser game by acting like a game studio. | Claude plugin directory |
| [`code-review-skill`](skills/code-review-skill) | Reviews code for bugs, inefficiencies, and adherence to best practices, providing actionable improvement suggestions. | Claude plugin directory |
| [`workflow-automation-agent`](skills/workflow-automation-agent) | Breaks complex tasks into step-by-step workflows, mapping actions to tools, optimizing execution, and improving efficiency. | Claude plugin directory |

### Web3  ·  `web3`

Wallets and on-chain analysis.

| Skill | What it does | From |
|---|---|---|
| [`binance-agentic-wallet`](skills/binance-agentic-wallet) | Use when the user mentions wallet connect/sign in/sign out, check balance, send/transfer tokens, swap/buy/sell tokens, DEX trade, limit/market orde… | Binance |
| [`onchain-transaction-analyzer`](skills/onchain-transaction-analyzer) | Analyzes blockchain transactions by tracing wallets, contracts, and token movements and providing simple, understandable explanations. | Claude plugin directory |
| [`intuition-mission-cook`](skills/intuition-mission-cook) | Use when working on Intuition Box missions or bounties — selecting a mission from the board, writing a winning application comment, scoping and bui… | Claude plugin directory |

## Good to know

- **Some skills need a tool or account.** The Higgsfield skills need the Higgsfield connector in Claude, Remotion needs Node.js, and the Binance skill needs Binance's wallet tools. Each `SKILL.md` says what it needs.
- **Office and Anthropic skills may already be in your Claude.** Claude.ai ships its own `docx`, `pdf`, `pptx` and `xlsx`; the installer skips any folder you already have.
- **Skills are just instructions.** Each folder is a `SKILL.md` plus scripts or references. Read one before you run its scripts, as you would with any code from the internet.

## Credits and licences

Only `ui-motion-reel` and `ui-inspiration` are mine (MIT). Every other skill belongs to its maker and keeps its own terms: Anthropic's under Apache 2.0, unslop under CC-BY-4.0, and the Remotion, Higgsfield, Binance and plugin-directory skills as their makers published them. See [LICENSE.md](LICENSE.md).

**Made one of these?** If you'd like it credited differently, linked instead of copied, or removed, [open an issue](https://github.com/neromtoobad/creator-skills/issues) and I'll sort it the same day.

## Contributing

Got a skill that saves you hours? Open a pull request that adds a folder under `skills/` with a `SKILL.md`, and say where it came from.
