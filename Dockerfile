FROM python


COPY test.py .
RUN ["apt", "install", "nginx", "-y"]

RUN ["python", "test.py"]
RUN ["systemctl", "start", "nginx"]
RUN ["systemctl", "enable", "nginx"]