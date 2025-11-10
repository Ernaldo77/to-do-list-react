# Imagem base oficial do Node.js (versão LTS recomendada)
FROM node

# Labels de metadados
LABEL maintainer="Ernaldo Miguel <ernaldomiguel77@gmail.com>" \
      version="1.0" \
      description="API para Projeto to-do-list-react." \
      created_by="Ernaldo Miguel"

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia os arquivos de dependências primeiro (melhora o cache do build)
COPY package*.json ./

# Instala as dependências do projeto
RUN npm install

# Copia o restante dos arquivos do projeto para o container
COPY . .

# Expõe a porta usada pela aplicação
EXPOSE 5173

# Comando para rodar a aplicação
CMD ["npm", "run", "dev"]