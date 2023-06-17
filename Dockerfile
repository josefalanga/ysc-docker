FROM ubuntu:latest

RUN apt update

RUN apt install -y git dotnet

RUN git clone git@github.com:YarnSpinnerTool/YarnSpinner-Console.git

RUN ./dotnet/dotnet --version