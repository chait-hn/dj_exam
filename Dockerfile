# Pythonベース
FROM python:3.12-slim

# 作業ディレクトリ
WORKDIR /app

# 依存ファイルコピー
COPY requirements.txt .

# 必要なパッケージをインストール
RUN pip install --no-cache-dir -r requirements.txt

# アプリコピー
COPY . .

# ポート開放
EXPOSE 8000

# 実行コマンド
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]