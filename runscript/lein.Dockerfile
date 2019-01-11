FROM clojure:latest

# Install dep
RUN apt update -y
RUN apt install -y wget

# Install lein
RUN wget https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
RUN chmod +x lein
RUN ./lein

# Make sure to create a shared volume in the run directory to make sure it is run.
WORKDIR /run
CMD /usr/local/bin/lein run
