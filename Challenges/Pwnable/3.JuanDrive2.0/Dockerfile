FROM python:3.6-slim-buster
RUN apt update -y && apt upgrade -y
RUN apt install -y socat
RUN useradd juandrive -s /bin/rbash
RUN mkdir -p /home/juandrive/bin
RUN ln -s /bin/ls /home/juandrive/bin/ls
RUN ln -s /bin/cat /home/juandrive/bin/cat
RUN ln -s /bin/less /home/juandrive/bin/less
RUN ln -s /usr/local/bin/python /home/juandrive/bin/python
RUN ln -s /usr/bin/socat /home/juandrive/bin/socat
RUN echo "# .bash_profile" >> /home/juandrive/.bash_profile
RUN echo "PATH=\$HOME/bin" >> /home/juandrive/.bash_profile
RUN echo "export PATH" >> /home/juandrive/.bash_profile
RUN chown root. /home/juandrive/.bash_profile
EXPOSE 5000
USER juandrive
WORKDIR /home/juandrive
COPY bandera.txt .
COPY main.py .
COPY server.sh .
CMD ["socat", "TCP-LISTEN:5000,reuseaddr,fork", "EXEC:'/home/juandrive/server.sh'"]
