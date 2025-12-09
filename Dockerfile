FROM python

COPY test.py .
CMD ["pip3", "install"]

RUN ["python", "test.py"]