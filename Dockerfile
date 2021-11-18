#   Author: Mateusz Jarkiewicz - mjarkiew.github.io

FROM mjarkiew/arch-debug
WORKDIR /opt/helloworld
COPY . ./
RUN mkdir -p build
RUN gcc -g src/helloworld.c -o build/helloworld
EXPOSE 7777
CMD gdbserver :7777 build/helloworld