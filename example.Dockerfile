# Example Dockerfile to describe useful options.

# ___ MUST BE CONTAINED ___
# FROM specifies the container name you want to use as a starting point for
# your container.
FROM ubuntu:xenial
# MAINTAINER is what is displayed when someone looks at the metadata of your
# created image.
MAINTAINER amaricich <amaricich@skylinenet.net>
# ___ MUST BE CONTAINED ___

# RUN executes the command at BUILD TIME.
RUN apt update
RUN apt install telnet openssh-server -y

RUN useradd -ms /bin/bash username
# USER specifies the user account to log in as. From here on out, we will be using
# this particular user.
USER username

#ENV sets an environment variable with `name` and `value`.
ENV NAME value

# CMD will run the command when the container is instanciated, but only if another
# command is not specified as a parameter.
CMD "echo" "This ran the first time it was run!"

# EXPOSE will allow the -P auto expose port functionality to remap the exposed
# port to a selected open port specified by docker.
EXPOSE 80

# ENTRYPOINT will run the command every time the container is instanciated, without fail.
ENTRYPOINT echo "This message will be displayed every time!"
