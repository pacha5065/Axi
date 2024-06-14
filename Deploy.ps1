#Builds the image by building the code and running the tests:

docker build -t super-service-image .

docker run -it --name super-service super-service-image