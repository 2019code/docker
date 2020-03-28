FROM mcas-docker-candidates.repo.lab.pl.alcatel-lucent.com/heatvm:latest
ENV DIR="/root"

# We install dependencies separatly for a caching purpose

ADD . ${DIR}

WORKDIR ${DIR}

RUN ls

#RUN pip install -r requirements.txt
#RUN ./StartRestfulServer.bat

#EXPOSE 33060



CMD ["/bin/sh", "StartRestfulServer.bat"]
#CMD ["/usr/sbin/init"]
