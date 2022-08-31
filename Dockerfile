FROM python:3.9.13-slim-bullseye
WORKDIR app
COPY proto/* proto/
COPY requirements.txt .
COPY --chmod=777 test.sh .
RUN pip install -r requirements.txt