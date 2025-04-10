# Stage 1: Build the appp with dependencies
FROM python:3.11-slim AS builder
WORKDIR /app
COPY requirements.txt .
RUN pip install --user -r requirements.txt
COPY app.py .

# Stage 2: Use a distroless image for runtime

FROM gcr.io/distroless/python3-debian12
WORKDIR /app
COPY --from=builder /root/.local/lib/python3.11/site-packages/ /usr/lib/python3.11/
COPY --from=builder /app/app.py .
ENV PYTHONPATH=/usr/lib/python3.11
CMD ["app.py"]