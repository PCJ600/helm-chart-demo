FROM rockylinux:9.3

RUN dnf install -y python3 python3-pip

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY app.py .

CMD ["python3", "app.py"]
