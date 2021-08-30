# Hva er sheatless-splitter?

Sheatless-splitter er et python-script for å splitte note-PDFer basert på [sheatless](https://pypi.org/project/sheatless/). Den tar inn PDFer med noter, der flere enkeltstemmer er i samme PDF og splitter dem i en PDF per stemme.

# Hvordan bruke sheatless-splitter?

Legg PDFene som skal splittes i mappa `input_pdfs`, kjør koden og voila! Koden bruker omtrent 2 sekunder per side, så det kan ta en del tid hvis man legger inn mange PDFer. Når scriptet er ferdig vil du finne ferdig splittede PDFer i mappa `output_pdfs`.

# Oppsett

## 1. Klon repo:

```
git clone https://github.com/sigurdo/sheatless-splitter.git
cd sheatless-splitter
```

## 2. Velg eller ikke velg docker

Docker er system for å automatisere oppsett av environment for en app og samtidig isolere det fra host OS. Se [her](https://docs.docker.com/get-docker/) hvordan du kan installere docker for ditt OS.

Docker-compose er et verktøy til docker for å automatisere oppsett og management av selve containeren, spesielt nyttig hvis man trenger flere containere.

Dette repoet har 3 ulike guider for resten av oppsettet:

- [Uten docker](guides/setup/no_docker.md)
- [Med docker, men uten docker-compose](guides/setup/docker.md)
- [Med docker og docker-compose](guides/setup/docker_compose.md)

Jeg anbefaler sterkt å gå for docker-compose, men jeg lagde også den for "vanlig" docker fordi det var kult. Guiden uten docker i det hele tatt kan være nyttig hvis du for some reason ikke kan kjøre docker på PCen din.

# Flere guider

Flere guider finnes i [`guides`](guides).

Der finnes det for eksempel et dokument med noen [generelle tips for development i docker](guides/development/docker-cli.md).
