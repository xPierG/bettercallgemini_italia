[![Version](https://img.shields.io/badge/version-1.0.8-blue)](https://github.com/fedec65/bettercallclaude_italia/releases)
[![License: AGPL-3.0](https://img.shields.io/badge/license-AGPL--3.0-green)](LICENSE)
[![Platform](https://img.shields.io/badge/platform-Cowork%20Desktop-orange)](https://claude.ai)

<p align="center">
  <img src="bettercallclaude_italia/docs/images/logo.png" alt="Meglio Chiamare Claude" width="400">
</p>

<p align="center"><strong>Marketplace — BetterCallClaude Italia</strong></p>

Marketplace per l'installazione del plugin **BetterCallClaude Italia** su Cowork Desktop.

Il plugin offre intelligenza legale italiana — ricerca sui precedenti della Cassazione, strategia di causa, redazione legale e verifica delle citazioni in tutte le 20 regioni italiane, con protezione integrata del segreto professionale (Art. 622 CP + L. 247/2012).

---

## Installazione

Questo repository supporta sia **Claude** (come plugin per l'applicazione desktop) sia **Gemini CLI** (come skill nativa).

### Per Claude (Cowork Desktop)

1. In Cowork, clicca **Personalizza** > **Sfoglia plugin** > **Personali** > **+** > **Aggiungi marketplace da GitHub**
2. Inserisci `fedec65/bettercallclaude_italia` e clicca **Sincronizza**
3. Clicca **Installa** sulla scheda BetterCallClaude Italia

I server MCP si connettono automaticamente via HTTP. Nessuna configurazione manuale richiesta per i server remoti.

> **[QUI L'INSTALLAZIONE PASSO PER PASSO](bettercallclaude_italia/docs/INSTALLAZIONE.md)** -- Guida illustrata con screenshot per ogni passaggio.

### Per Gemini CLI (Skill)

La skill **Ricerca Legale Italiana** è pronta all'uso e non richiede configurazione manuale dei server MCP, che sono già mappati per utilizzare la connessione HTTP corretta.

La skill è progettata per essere utilizzata sfruttando il modello "workspace" di Gemini CLI:

1. **Requisiti:** Assicurati di aver installato il `gemini-cli` sul tuo sistema.
2. **Clona il Repository:**
   ```bash
   git clone https://github.com/xPierG/bettercallgemini_italia.git
   cd bettercallgemini_italia
   ```
3. **Avvia Gemini CLI:**
   Avvia semplicemente il comando `gemini` dall'interno della directory del progetto. Il CLI rileverà automaticamente la skill locale nella directory `italian-legal-research` e applicherà la configurazione dei server MCP contenuta in `.gemini/settings.json`:
   ```bash
   gemini
   ```
4. **Attiva la Skill:**
   Durante la conversazione, puoi attivare manualmente la skill usando:
   ```
   /activate-skill italian-legal-research
   ```
   Oppure la skill si attiverà automaticamente non appena farai una domanda relativa al diritto o alla ricerca legale italiana.

---

## Documentazione

📖 [README completo del plugin](bettercallclaude_italia/README.md)

---

## Licenza

[AGPL-3.0](LICENSE)
