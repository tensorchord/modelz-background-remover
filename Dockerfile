FROM python:3.10

WORKDIR /workspace

ADD . /workspace/

RUN pip install -r /workspace/requirements.txt

CMD ["streamlit", "run", "main.py", "--server.port=8501", "--server.address=0.0.0.0","--server.enableCORS=false", "--server.enableXsrfProtection=false"]
