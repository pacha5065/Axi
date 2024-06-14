#Builds the image by building the code and running the tests:

cd .\super-service\src\
dotnet build

cd .\super-service\test
dotnet test

docker build -t super-service-image .

docker run -it --name super-service super-service-image

#if you want to push to cloud you can follow the below steps:
# docker logging <docker hub url> - followed by your creds to log in successfully.
# docker push super-service-image
