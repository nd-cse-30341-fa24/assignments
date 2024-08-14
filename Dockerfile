# To Build: docker buildx build --no-cache -t pbui/cse-30341-fa24-assignments . 

FROM        ubuntu:24.04
MAINTAINER  Peter Bui <pbui@nd.edu>
ENV	    DEBIAN_FRONTEND noninteractive

# Update package metadata
RUN	    apt update -y

# Run-time dependencies
RUN	    apt install -y python3-tornado python3-requests python3-yaml python3-markdown

# Shell utilities
RUN	    apt install -y curl bc netcat-openbsd iproute2 zip unzip gawk

# Language Support: C, C++, Make, valgrind, cppcheck
RUN	    apt install -y gcc g++ make valgrind cppcheck libssl-dev
