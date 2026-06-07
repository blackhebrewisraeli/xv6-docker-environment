# xv6 Docker Environment

This repository provides a Docker-based development environment for building and running the MIT xv6 operating system.

The environment was prepared as part of an Operating Systems course assignment, with the goal of validating Docker usage, QEMU execution, and reproducible system-level development setup.

## What This Repository Demonstrates

- Building an Ubuntu-based Docker image
- Installing the required xv6 build dependencies
- Cloning the public MIT xv6 source tree
- Building xv6 inside a container
- Running xv6 with QEMU
- Validating the environment with a simple shell script
- Using GitHub Actions to check that the Docker image builds successfully

## Repository Structure

```text
.
├── Dockerfile
├── README.md
├── .gitignore
├── docs/
│   └── docker-validation.md
├── scripts/
│   └── check-docker-build.sh
└── .github/
    └── workflows/
        └── docker-build.yml
```

## Build the Docker Image

```bash
docker build -t xv6-maman02 .
```

## Start an Interactive Container

```bash
docker run --rm -it xv6-maman02
```

The container starts in:

```bash
/xv6
```

## Build xv6

Inside the container:

```bash
make
```

## Run xv6

Inside the container:

```bash
make qemu-nox
```

To exit QEMU:

```text
Ctrl+A, then X
```

## Automated Validation

From the repository root:

```bash
./scripts/check-docker-build.sh
```

## Notes

This repository documents the Docker environment and validation process only.

It does not publish course solution files, private assignment documents, screenshots, or submitted answers.
