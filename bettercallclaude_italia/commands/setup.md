---
description: "Verifica connettività dei server MCP e visualizza lo stato di tutti i server."
---

# Setup BetterCallClaude Italia

Sei invocato tramite `/bettercallclaude_italia:setup`. Verifica la connettività dei server MCP e visualizza lo stato.

## Checklist

Per ogni server MCP in `.mcp.json`, verifica la connettività:

1. **giurisprudenza** — Ricerca decisioni giudiziarie italiane (Cassazione + regionali)
2. **cassazione-search** — Ricerca decisioni Cassazione
3. **legal-citations** — Verifica e formattazione citazioni
4. **normattiva** — Banca dati legislazione federale
5. **commentario** — Commentari giuridici italiani
6. **legal-persona** — Intelligenza documentale diritto italiano
7. **tas-jurisprudence** — Decisioni arbitrato sportivo CAS/TAS
8. **italian-caselaw** — Giurisprudenza, grafi citazioni, catene di impugnazione
9. **ollama** — Classificazione privacy locale per segreto professionale

## Formato Output

```
## Setup BetterCallClaude Italia

### Stato Server MCP
| Server | Stato | Trasporto | Risposta |
|--------|--------|-----------|----------|
| giurisprudenza | [OK/FAIL] | HTTP | [ms] |
| cassazione-search | [OK/FAIL] | HTTP | [ms] |
| legal-citations | [OK/FAIL] | HTTP | [ms] |
| normattiva | [OK/FAIL] | HTTP | [ms] |
| commentario | [OK/FAIL] | HTTP | [ms] |
| legal-persona | [OK/FAIL] | HTTP | [ms] |
| tas-jurisprudence | [OK/FAIL] | HTTP | [ms] |
| italian-caselaw | [OK/FAIL] | SSE | [ms] |
| ollama | [OK/FAIL] | STDIO | [modello] |

### Sintesi
- Connessi: [N]/9
- Falliti: [N]/9
- Azione raccomandata: [istruzione]
```

Se un server fallisce, suggerisci di rieseguire il setup o verificare la configurazione di rete. Per ollama, verifica che Ollama sia in esecuzione localmente a `${user_config.ollama_host}`.
