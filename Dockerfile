FROM python:alpine3.15

# For future reference
LABEL maintainer="Eduardo <me@dmaax.xyz>"

# Set workdir
WORKDIR /app

# Copy application
COPY . /app/

# Dependency install
RUN pip install -r requirements.txt

# Application port
EXPOSE 8008

# Execute the application
CMD [ "python", "app.py"]
