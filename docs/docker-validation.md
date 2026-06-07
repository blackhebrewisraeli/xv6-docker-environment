# Docker Validation

This document records the basic validation steps for the xv6 Docker environment.

## 1. Build the Docker Image

```bash
docker build -t xv6-maman02 .
```

Expected result:

```text
Successfully built <image-id>
Successfully tagged xv6-maman02:latest
```

## 2. Start an Interactive Container

```bash
docker run --rm -it xv6-maman02
```

Inside the container, the working directory should be:

```bash
/xv6
```

## 3. Build xv6

Inside the container:

```bash
make
```

The build should finish without fatal errors.

## 4. Run xv6 with QEMU

Inside the container:

```bash
make qemu-nox
```

Expected behavior:

- xv6 boots successfully.
- The console becomes interactive.
- The xv6 shell prompt appears.

To exit QEMU:

```text
Ctrl+A, then X
```

## 5. Run with Resource Limits

From the host machine:

```bash
docker run --rm -it --cpus="1" --memory="512m" xv6-maman02
```

Then inside the container:

```bash
make qemu-nox
```

This validates that the environment can run under limited CPU and memory resources.
