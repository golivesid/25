FROM hrishi2861/terabox:latest
WORKDIR /app
COPY requirements.txt .
RUN pip3 install flask
COPY . .
RUN pip install --upgrade pip setuptools
CMD ["bash", "start.sh"]
