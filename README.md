# docker-dockerlint

Usage: 

    $ docker run --rm -v ${PWD}/Dockerfile:/Dockerfile tanel/dockerlint -h
    Dockerlint 0.3.1
    
        usage: dockerlint [-h] [-dp] [-f Dockerfile]

In action:

    $ docker run --rm -v ${PWD}/Dockerfile:/Dockerfile tanel/dockerlint -p

    INFO: /Dockerfile is OK.

