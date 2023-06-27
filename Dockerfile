FROM python:3.12.0b3-slim-bullseye
WORKDIR /app
COPY requirements.txt .
RUN pip3 install -r requirements.txt
COPY students.py .
EXPOSE 5200
EXPOSE 5000
CMD ["python3","students.py"]
