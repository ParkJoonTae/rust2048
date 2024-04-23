FROM rust:1.77.2

WORKDIR /app

RUN cargo install wasm-pack

COPY . .

RUN wasm-pack build --target web --out-name wasm --out-dir ./static

WORKDIR /app/static

CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"] 
