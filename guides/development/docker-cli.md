# Tips for development i docker

## Kjøre vilkårlige kommandoer i en container

Det er ofte handy å kunne kjøre andre kommandoer enn de som er definert i `Dockerfile` eller `docker-compose.yaml`. Dette er heldigvis imponerende enkelt.

Standard måten å kjøre et image er

```
docker run [OPTIONS] IMAGE
```

men hvis du ikke vil kjøre den predefinerte kommandoen, men din egen i stedet kan du ganske enkelt gjøre

```
docker run [OPTIONS] IMAGE COMMAND
```

og enda bedre, du kan starte hele containeren som et interaktivt shell og kalle så mange kommandoer du vil med

```
docker run -it [OPTIONS] IMAGE bash
```

som du ser er dette bare et spesialtilfelle av den forrige kommandoen, men vi må putte på -it for kunne skrive input gjennom terminalen under kjøring og kommandoen er bash, altså det vanligste terminall-shellet for linux.

Med docker-compose blir det nesten det samme, bare at du må bruke `run` istedenfor `up` og spesifiere hvilken service det gjelder:

```
docker-compose run SERVICE COMMAND
```

SERVICE er definert av [`docker-compose.yaml`](/docker-compose.yaml). I dette tilfellet er det `app`.
Docker-compose kjører med `-it` by default, så det trengs ikke å spesifieres hvis du vil starte interaktivt shell:

```
docker-compose run SERVICE bash
```

### Eksempler

#### Kjøre python script med et annet tessdata-dir:

```
docker run --rm -v $(pwd)/output_pdfs:/app/output_pdfs -v $(pwd)/input_pdfs:/app/input_pdfs -v $(pwd)/src:/app/src sheatless-splitter python src/pdf_splitter.py --use-lstm --tessdata-dir tessdata/tessdata_fast-4.1.0/
```

eller

```
docker-compose run app python src/pdf_splitter.py --use-lstm --tessdata-dir tessdata/tessdata_fast-4.1.0/
```

#### Kjøre bash shell i container

```
docker run --rm -it -v $(pwd)/output_pdfs:/app/output_pdfs -v $(pwd)/input_pdfs:/app/input_pdfs -v $(pwd)/src:/app/src sheatless-splitter bash
```

eller

```
docker-compose run app bash
```
