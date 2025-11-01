# 🐳 Base Runner Container

**Image:** [`psafonov7/base-runner`](https://hub.docker.com/r/psafonov7/base-runner)  
**Parent:** [`debian:13.1-slim`](https://hub.docker.com/_/debian)

The **Base Runner** is a minimal and reusable CI/CD foundation image designed to be extended by other runner containers

- Includes essential CLI utilities (`curl`, `wget`, `jq`, `git`, etc.)
- Preinstalled `python3` and `pip`
- Preinstalled `yq` (Go-based version)
- Git LFS enabled system-wide
