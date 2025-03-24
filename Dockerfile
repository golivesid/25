FROM hrishi2861/terabox:heroku
WORKDIR /app
COPY requirements.txt .
RUN pip3 install --no-cache-dir --break-system-packages --ignore-installed -r requirements.txt
COPY . .
CMD ["bash", "start.sh"]
