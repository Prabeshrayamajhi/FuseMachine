# **Deploy your ML model using FastAPI and docker**


Specifically, in this session, I have covered:

- Convert a initial simple business problem into an end / intermediate solution / service (REST APIs)
- Used jupyter-notebooks for basic data analysis and EDA. Also we have implemented models to see how it works on the provided data. 
- Created schemas for the Request bodies using Pydantic 
- Created a basic level of configuration management for the serving model deployement on different environments like prod/dev/stage. 
- Implemented model inference engine for model prediction. 
- Created a simple REST API for using FastAPI with `GET` and `POST` endpoints for model prediction

### How to run the existing project

#### **Method1** Running locally: 

- Clone the repository by running `git clone https://github.com/Prabeshrayamajhi/FuseMachine.git` 
- First install the latest version of [PyTorch](https://pytorch.org/)
- Install the remaining dependencies from `requirements.txt` files. 
- Finally, once everything is installed, just run the command using:

```python
python app/main.py
```
This will start our server.

#### **Method2** Running using docker: 

- Just like before, first clone the repository.
- Then just run the command

```bash
sh docker_build.sh
```
This will start building our docker image

- Once the image is built, run the command

```bash
docker run ml/session1:latest
```


### Video demo
https://drive.google.com/drive/folders/1IUsN6XmqMVYCXlSB2tcgXkSEr-XtOoY-?usp=sharing



#### **Comming soon:**



---

Till then stay tuned. Also contributions are always welcome 🤗. You can create issues and build on the top of this app. The modelling prespective was never prioritized atleast for this case. But we can work around it. 


### **Important references** 

Below are some references

- [Deploying PyTorch Model to Production with FastAPI in CUDA-supported Docker](https://medium.com/@mingc.me/deploying-pytorch-model-to-production-with-fastapi-in-cuda-supported-docker-c161cca68bb8)

- [Build with PyCaret, Deploy with FastAPI](https://towardsdatascience.com/build-with-pycaret-deploy-with-fastapi-333c710dc786)

- [Deploy Machine Learning Pipelines with Docker
](https://www.moez.ai/2020/05/07/deploy-machine-learning-pipeline-using-docker-containers/)
