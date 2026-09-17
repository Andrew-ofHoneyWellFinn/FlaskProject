FROM python:3.10

WORKDIR /app

RUN python -m pip install --upgrade pip

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 80

# Flaskコマンドではなく、直接Pythonでapp.pyを実行するように変更
CMD ["python", "app.py"]