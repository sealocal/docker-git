# docker-git


Build the base image:

    $ docker build -f dependcies/Dockerfile -t git-dependencies .

Build the git image:

    $ docker build -t git .

Run the latest image (2.25.0):

    $ docker run --rm -it git
    root@[container]:/# git --version
    git version 2.25.0
    root@[container]:/# exit
    exit

    $ docker run --rm -it git:latest
    root@[container]:/# git --version
    git version 2.25.0
    root@[container]:/# exit
    exit


Build the git image with a specific version of git (e.g., 2.24.0):

    $ docker build -t git:2.24.0 --build-arg VERSION=2.24.0 .

Run the versioned image:

    $ docker run --rm -it git:2.24.0
    root@[container]:/# git --version
    git version 2.24.0
    root@[container]:/# exit
    exit
