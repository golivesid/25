FROM hrishi2861/terabox:latest
WORKDIR /app

# Copy requirements.txt first to leverage caching
COPY requirements.txt .
RUN pip3 install --no-cache-dir --break-system-packages -r requirements.txt
COPY . .
CMD ["bash", "start.sh"]
