FROM python:3.7-slim
RUN ls -lsa
WORKDIR home/fahad
COPY requirments.txt .
RUN pip install -r requirments.txt
COPY . .
EXPOSE 8000
CMD [ "gunicorn", "--bind", "0.0.0.0:80", "app:app" ]
