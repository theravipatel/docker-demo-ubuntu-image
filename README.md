# Simple Docker Demo of Ubuntu base image

## 1) In the `dockerfile` add following code

```
# Use the Ubuntu base image
FROM ubuntu

# Set the working directory inside the container
WORKDIR /app

# Copy a script.sh file to the container
COPY script.sh .

# Make the script.sh executable
RUN chmod +x script.sh

# Run the script.sh when the container starts
CMD [ "./script.sh" ]
```

## 2) Create shell script file
- script.sh
```
#!/bin/bash
echo "Hello There!"
```

## 3) Build your image
```
docker build -t my-demo-ubuntu-image .
```

## 4) Create container
```
docker run my-demo-ubuntu-image
```

- Output
```
Hello There!
```

## 5) To publish your image to hub.docker.com
- Create account in https://hub.docker.com/
- Add tag to your image from terminal
```
docker tag YOUR_IMAGE_ID YOUR_DOCKER_HUB_USERNAME/my-demo-ubuntu-image
```
- Login to the docker hub from terminal using your credentials
```
docker login
```
- Push your image to docker hub using `docker push YOUR_TAG_NAME`. Here from the above code, our tag name is `YOUR_DOCKER_HUB_USERNAME/my-demo-ubuntu-image`
```
docker push YOUR_DOCKER_HUB_USERNAME/my-demo-ubuntu-image
```
- Now check your https://hub.docker.com/ account's repositories. Above image will be there and available publicly.