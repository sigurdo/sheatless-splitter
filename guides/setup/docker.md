# Oppsett med Docker, men uten docker-compose
## 1 Bygge container

```
docker build -t sheatless-splitter .
```

## 2 Kjøre container

```
docker run --rm -v $(pwd)/output_pdfs:/app/output_pdfs -v $(pwd)/input_pdfs:/app/input_pdfs -v $(pwd)/src:/app/src sheatless-splitter
```
