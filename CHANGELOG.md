# Changelog

All notable changes to BetterCallClaude Italia will be documented in this file.

---

## [1.0.0] - 2026-05-21

### Added
- **Initial release** — Complete Italian legal intelligence plugin for Cowork Desktop.
- **20 agents** covering all major areas of Italian legal practice:
  - Research (ricerca giuridica), Strategy (strategia processuale), Drafting (redazione legale)
  - Citation (citazioni giuridiche), Briefing (briefing strutturato), Adversarial (analisi avversaria)
  - Jurisdictional coverage for all 20 Italian regions (LOM, LAZ, CAM, VEN, etc.)
- **19 commands** with Italian-language slash-command interface:
  - `/bettercallclaude_italia:legal`, `/bettercallclaude_italia:research`, `/bettercallclaude_italia:strategy`
  - `/bettercallclaude_italia:draft`, `/bettercallclaude_italia:cite`, `/bettercallclaude_italia:precedent`
  - `/bettercallclaude_italia:regional`, `/bettercallclaude_italia:adversarial`, `/bettercallclaude_italia:workflow`
- **14 skills** with auto-activation for Cowork's skill router:
  - `italian-legal-research`, `italian-legal-strategy`, `italian-legal-drafting`
  - `italian-citation-formats`, `italian-document-analysis`, `italian-legal-translation`
  - `compliance-frameworks`, `data-protection-law`, `privacy-routing`
- **9 MCP servers** in `.mcp.json`:
  - 7 remote HTTP servers on `mcp-italia.bettercallclaude.ch`:
    `normattiva`, `corte-costituzionale`, `giustizia-amministrativa`, `cassazione`,
    `eur-lex-ita`, `legal-citations-ita`, `legal-persona-ita`
  - 1 local STDIO `ollama` server for on-premise privacy classification
- **Privacy hook** — `PreToolUse` hook (`scripts/privacy-check.js`) detects
  Italian attorney-client privilege markers (`segreto professionale`, `Art. 622 CP`,
  `Art. 9 D.Lgs. 96/2001`) before data leaves the machine.
- **Marketplace structure** — Repo is a Cowork Desktop marketplace with
  `.claude-plugin/marketplace.json` at root and plugin source in
  `bettercallclaude_italia/` subdirectory.

### Architecture
- Swiss→Italian legal mapping: ZGB/OR → Codice Civile (CC); StGB → Codice Penale (CP);
  ZPO → Codice di Procedura Civile (CPC); BV → Costituzione (Cost.); BGE → Cassazione;
  26 Cantons → 20 Italian regions; CHF → EUR.
- AGPL-3.0 licensed.

---

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).
