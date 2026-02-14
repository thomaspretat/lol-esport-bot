FROM python:3.11-slim

LABEL maintainer="thomas.pretat@protonmail.com"
LABEL description="LoL Esports Discord Bot"
LABEL version="1.0.0"

#SETUP
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt


#SECURITY
RUN useradd -m -u 1000 botuser && \
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