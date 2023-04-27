FROM python:3.9

ARG GRADIO_SERVER_PORT=8080
ENV GRADIO_SERVER_PORT=${GRADIO_SERVER_PORT}

WORKDIR /workspace

COPY . /workspace/

RUN pip install -r /workspace/requirements.txt

CMD ["streamlit", "run", "main.py", "--server.port=8501", "--server.address=0.0.0.0","--server.enableCORS=false", "--server.enableXsrfProtection=false"]
