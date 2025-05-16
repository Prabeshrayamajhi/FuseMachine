# import the ubuntu latest image 

FROM ubuntu:latest 
FROM python:3.8 

# install utilities 
RUN apt-get update && \
    apt-get install --no-install-recommends -y curl


# Installing python dependencies
RUN python3 -m pip --no-cache-dir install --upgrade pip && \
    python3 --version && \
    pip3 --version

# Install PyTorch 
RUN pip3 --timeout=300 --no-cache-dir install torch==1.10.0+cu113 -f https://download.pytorch.org/whl/cu113/torch_stable.html

COPY ./requirements.txt .
RUN pip install -r requirements.txt

# Copy Models and App files 

RUN mkdir FuseMachine
COPY ./Models FuseMachine/Models
COPY ./app FuseMachine/app 
COPY ./checkpoints FuseMachine/checkpoints 

# COPY app files 

WORKDIR "/FuseMachine"
RUN ls 
EXPOSE 8900
ENV PYTHONPATH=/FuseMachine
ENTRYPOINT ["python3"]
CMD ["app/main.py"]