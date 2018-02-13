FROM florianwechsung/firedrake:latest

# Install
RUN cd ~
RUN pip3 install roltrilinos
RUN pip3 install ROL

RUN mkdir -p /src/
WORKDIR /src/
COPY . /src/
RUN ls
RUN pytest
