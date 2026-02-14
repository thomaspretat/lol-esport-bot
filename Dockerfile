FROM python:3.13-alpine

LABEL maintainer="thomas.pretat@protonmail.com"
LABEL description="LoL Esports Discord Bot"
LABEL version="2.0.0"

#SETUP
WORKDIR /app
COPY requirements.txt .
RUN apk add --no-cache gcc musl-dev && \
    pip install --no-cache-dir -r requirements.txt && \
    pip uninstall -y setuptools wheel pip && \
    apk del gcc musl-dev


#SECURITY
RUN adduser -D -u 1000 botuser && \
    mkdir -p /app/data && \
    chown -R botuser:botuser /app


#COPY APP & SWITCH TO GOOD USER
COPY --chown=botuser:botuser bot.py .
USER botuser


#HEALTHCHECK
HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 \
    CMD python -c "import sys; sys.exit(0)"


#LAUNCH APP
CMD ["python", "-u", "bot.py"]