FROM rust:1.77.2 as wasm-builder
WORKDIR /app
RUN cargo install wasm-pack
COPY . .
RUN wasm-pack build --target web --out-name wasm --out-dir .

FROM nginx as web
COPY --from=wasm-builder ./app /usr/share/nginx/html
WORKDIR /usr/share/nginx/html
CMD ["nginx", "-g", "daemon off;"]
