# Forked Bitnami Kafka Docker Image

This repository provides a forked version of the Bitnami Kafka Docker image.  
As the official Legacy Bitnami image is no longer maintained, this fork allows independent maintenance and customization.

## Features

- Supports Kafka 4.x and above (KRaft mode only)
- Based on debian:bookworm image
- Uses Official Apache Kafka directly (no dependency on Bitnami container)

## Build Instructions

```bash
docker build -t kafka:latest .
```
