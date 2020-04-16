[![CircleCI](https://circleci.com/gh/softveda/udacity-microservices.svg?style=svg)](https://circleci.com/gh/softveda/udacity-microservices)

# Housing Price Predictor App

This is a Python flask app that serves out predictions (inference) about housing prices in Boston through API calls.

The app uses a pre-trained, *sklearn* model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. The data was initially taken from Kaggle, on the [data source site](https://www.kaggle.com/c/boston-housing). 

---

## Running the App
1. Open a terminal and clone the project repository, then navigate to the project folder. 
```bash
git clone https://github.com/softveda/udacity-microservices.git
cd udacity-microservices/project-ml-microservice-kubernetes
```

2. Create (and activate) a new virtual environment with Python 
```bash
make setup
```

3. Install dependencies 
```bash
make install
```

4. Run the app
```bash
 python3 app.py
```
*Note: You will have to change the hosting port of the app from 80 to 8000*

This should write some logs to terminal like  
```
* Serving Flask app "app" (lazy loading)
 * Environment: production
   WARNING: Do not use the development server in a production environment.
   Use a production WSGI server instead.
 * Debug mode: on
 * Running on http://0.0.0.0:8000/ (Press CTRL+C to quit)
 * Restarting with stat
 * Debugger is active!
 * Debugger PIN: 202-879-013
```


5. Make a prediction  
Open another terminal and run
```bash
./make_prediction.sh
``` 

This should log the Prediction value returned from the app

```json
Port: 8000
{
  "prediction": [
    20.35373177134412
  ]
}
```

---
## Project Files

- **Makefile** - This is Makefile that has the setup and installation tasks that can be run using the *make* utility
- **requirements.txt** - This is the list of dependencies  (Python libraies) that are installed using the *pip* utility
- **app.py** - This is the Python Flask web application
- **Dockerfile** - This is the Docker build file to containerize the app as a Docker image
- **Shell scripts**
  - **run_docker.sh** - This script will build the Docker image of the app and run the app inside the container
  - **upload_docker.sh** - This script upload the Docker image to Docker hub repository
  - **run_kubernetes.sh** - This script deploys the Docker image to a Kubernetes cluster and runs the app in pods.