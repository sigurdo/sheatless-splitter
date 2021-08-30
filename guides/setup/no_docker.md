# Oppsett uten Docker
## 1 Installer nødvendige programmer

- Python
- Poppler
    - Linux: `sudo apt install poppler-utils`

    ```
    sudo apt install poppler-utils 
    ```

    - Windows: http://blog.alivate.com.au/poppler-windows/
- Tesseract
    - Linux: https://github.com/tesseract-ocr/tessdoc/blob/master/Installation.md

    ```
    sudo apt install tesseract-ocr
    ```
    
    - Windows: https://github.com/UB-Mannheim/tesseract/wiki
- Datasett for tesseract

    ```
    wget -O tessdata/tessdata_best.zip https://github.com/tesseract-ocr/tessdata_best/archive/refs/tags/4.1.0.zip
    unzip tessdata/tessdata_best.zip -d tessdata/
    ```

## 2 Lag virtual environment (må ikke, men det er ryddig og enkelt)

Lage:
```
python -m venv venv
```

Aktivere:
```
source venv/bin/activate
```

Deaktivere:
```
deactivate
```

## 3 Installer python-pakker

Dette må gjøres når virtual environmentet er aktivert
```
pip install -r requirements.txt
```

## 4 Kjøre koden

Scriptet kjører du med (virtual environment må forstatt være aktivert)
```
python src/splitter.py --use-lstm --tessdata-dir "tessdata/tessdata_best-4.1.0/"
```
