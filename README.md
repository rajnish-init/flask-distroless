# Flask Distroless App

A simple Flask web app demonstrating multi-stage Docker builds and distroless images.

## Setup
1. Clone the repo: `git clone https://github.com/rajnish-init/flask-distroless.git`
2. Navigate to the directory: `cd flask-distroless`
3. Run with Docker: `docker compose up --build`
4. Visit `http://localhost:5000`

## Files
- `app.py`: Flask application with Bootstrap styling.
- `Dockerfile`: Multi-stage build with distroless runtime.
- `docker-compose.yml`: Docker Compose setup with watch feature.
- `requirements.txt`: Python dependencies.
