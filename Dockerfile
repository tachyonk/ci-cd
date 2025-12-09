FROM python

COPY test.py .

RUN ["python", "test.py"]