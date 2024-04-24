# 2048 WebAssembly

<p align="center">
  <a target="_blank" href="https://2048.dev.family">
    <img src="https://github.com/dev-family/wasm-2048/blob/master/images/result.png">
  </a>
</p>

<p align="center">
  <a href="https://2048.dev.family">Live Demo</a>
</p>

[The famous 2048 game](https://github.com/gabrielecirulli/2048) implemented with Rust ([Yew](https://yew.rs/)) and compiled to WASM.

# Running

The simplest way to run is via docker:

```
sudo docker build -t wasm-2048 .
sudo docker run -d --name 2048 -p 8090:80 wasm-2048
```

Then open http://127.0.0.1:8090.

<hr />
