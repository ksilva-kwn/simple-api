# Estágio 1: Instalação (Builder)
FROM node:alpine3.22 AS builder

WORKDIR /app

# Copia arquivos de dependência
COPY package*.json ./

# Instala as dependências de produção
RUN npm ci --only=production

# Estágio 2: Execução (Final)
FROM node:alpine3.22

WORKDIR /app

# Define ambiente de produção
ENV NODE_ENV=production

# Copia as dependências instaladas e o código
COPY --from=builder /app/node_modules ./node_modules
COPY package*.json ./
COPY src/ ./src/

# Segurança: Muda para o usuário 'node'
USER node

# Porta que o Express utiliza
EXPOSE 3000

# Comando para iniciar a aplicação
CMD ["npm", "run", "start"]