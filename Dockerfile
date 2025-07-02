# Etapa 1: Imagem base
FROM python:3.13.5-alpine3.22

# Etapa 2: Diretório de trabalho dentro do contêiner
WORKDIR /app

# Etapa 3: Instalar as dependências
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Etapa 4: Copiar os arquivos necessários
COPY . .

# Etapa 5: Expôr a porta padrão do Uvicorn
EXPOSE 8000

# Etapa 6: Comando para iniciar o servidor FastAPI
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]
