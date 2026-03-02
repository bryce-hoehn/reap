# Base image
FROM runpod/pytorch:2.4.0-py3.11-cuda12.4.1-devel-ubuntu22.04

# Install uv system-wide and create python symlink
RUN curl -LsSf https://astral.sh/uv/install.sh | sh

# Set up the working directory
WORKDIR /workspace

# Copy project files
COPY . .

RUN /bin/bash scripts/build.sh

# Add venv to PATH for interactive shells
ENV PATH="/workspace/.venv/bin:${PATH}"

# Default command to run if no other command is specified
CMD ["/bin/bash"]
