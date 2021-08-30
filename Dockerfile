FROM python:3

# ensure realtime prints to terminal
ENV PYTHONUNBUFFERED=1

# set a directory for the app
WORKDIR /app

# copy necessary files to the container
COPY requirements.txt requirements.txt

# install dependencies
RUN apt-get update
RUN apt-get -y install ffmpeg libsm6 libxext6 poppler-utils tesseract-ocr
RUN pip install --no-cache-dir -r requirements.txt

# download data set
RUN mkdir tessdata
RUN wget -O tessdata/tessdata_best.zip https://github.com/tesseract-ocr/tessdata_best/archive/refs/tags/4.1.0.zip
RUN unzip tessdata/tessdata_best.zip -d tessdata/
RUN rm tessdata/tessdata_best.zip

# run the command
CMD ["python", "src/pdf_splitter.py", "--use-lstm", "--tessdata-dir", "tessdata/tessdata_best-4.1.0/"]
