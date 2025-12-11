FROM python


COPY test.py .
CMD ["nginx", "-g", "daemon off;"]
RUN ["apt", "update", "-y"]
RUN ["apt", "install", "nginx", "-y"]

RUN ["python", "test.py"]