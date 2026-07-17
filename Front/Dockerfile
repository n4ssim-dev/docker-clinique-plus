ARG NODE_VERSION=24.15.0-alpine
ARG NODE_VERSION=24.15.0-alpine
ARG NGINX_VERSION=alpine3.22

FROM node:${NODE_VERSION} AS builder

# répertoire de travail dans le dossier app
WORKDIR /app

# Copy les dépendences dans package.json
COPY package.json *package-lock.json* ./
# Install les dépendences
RUN npm ci
# Copy le reste de l'app dans le source code
COPY . .

# Build l'app
RUN npm run build

# -------------------------------------------
# 2. Prepare Nginx pour les fichiers statiques (build)
# -------------------------------------------

FROM nginxinc/nginx-unprivileged:${NGINX_VERSION} AS runner

# Copie la config nginx (template : ${API_UPSTREAM} y est injecté au démarrage)
COPY nginx.conf /etc/nginx/nginx.conf.template

# Cible des appels /api et /auth dans le réseau Compose (nom de service + port interne)
ENV API_UPSTREAM=api:3000

# Copie le dossier build vers le répertoire HTML de Nginx.
COPY --chown=nginx:nginx --from=builder /app/dist/*/browser /usr/share/nginx/html

# Utilise un utilisateur non root
USER nginx

# Expose l'app sur le port 8080
EXPOSE 8080

# Injecte API_UPSTREAM dans la config (envsubst ne touche que cette variable,
# les $uri/$host de nginx sont préservés), puis démarre nginx.
# La config générée va dans /tmp car l'utilisateur nginx ne peut pas écrire /etc/nginx
ENTRYPOINT ["/bin/sh", "-c", "envsubst '${API_UPSTREAM}' < /etc/nginx/nginx.conf.template > /tmp/nginx.conf && echo 'Application angular démarrée sur http://localhost:8080/' && exec nginx -c /tmp/nginx.conf -g 'daemon off;'"]
