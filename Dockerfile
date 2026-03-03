FROM runpod/pytorch:2.4.0-py3.11-cuda12.4.1-devel-ubuntu22.04

RUN curl -LsSf https://astral.sh/uv/install.sh | sh

RUN apt update -y && apt install screen nano -y

RUN source $HOME/.local/bin/env 

CMD ["/bin/bash"]
