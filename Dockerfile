FROM python:3.11-slim

# Install system dependencies, including ffmpeg for audio processing and gcc for any C extensions
RUN apt-get update && apt-get install -y ffmpeg libsm6 libxext6 gcc g++ && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Copy the requirements file first to leverage Docker cache
COPY requirements.txt .

# Install Python dependencies
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application
COPY . .

# Expose Streamlit default port
EXPOSE 8501

# Run the Streamlit app
CMD ["streamlit", "run", "frontend/streamlit_app.py", "--server.port=8501", "--server.address=0.0.0.0"]
