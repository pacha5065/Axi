#Builds the image by building the code and running the tests:

cd .\super-service\src\
dotnet build

cd .\super-service\test
dotnet test

docker build -t super-service-image .

docker run -it --name super-service super-service-image
