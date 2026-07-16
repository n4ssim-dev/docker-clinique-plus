# -------------------------------------------
# 1. Build l'app angular
# -------------------------------------------

ARG NODE_VERSION=24.12.0-alpine
ARG NGINX_VERSION=alpine3.22

# Use a lightweight Node.js image for building
FROM node:${NODE_VERSION} AS builder

# répertoire de travail dans le dossier app
WORKDIR /app

# Copy les dépendences dans package.json
COPY package.json *package-lock.json* ./
# Install les dépendences
RUN --mount=type=cache,target=/root/.npm npm ci
# Copy le reste de l'app dans le source code
COPY . .

# Build l'app
RUN npm run build

# -------------------------------------------
# 2. Prepare Nginx pour les fichiers statiques
# -------------------------------------------

FROM nginxinc/nginx-unprivileged:${NGINX_VERSION} AS runner

# Copie la config nginx
COPY nginx.conf /etc/nginx/nginx.conf

# Copie le dossier build vers le répertoire HTML de Nginx.
COPY --chown=nginx:nginx --from=builder /app/dist/*/browser /usr/share/nginx/html

# Utilise un utilisateur non root
USER nginx

# Expose l'app sur le port 8080
EXPOSE 8080

# Démarre nginx avec une config custom
ENTRYPOINT ["nginx", "-c", "/etc/nginx/nginx.conf"]
CMD ["-g", "daemon off;"]