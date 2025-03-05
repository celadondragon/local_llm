# Run the following command to uninstall all conflicting packages:
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done

# Install from a package
# If you can't use Docker's apt repository to install Docker Engine, you can download the deb file for your release and install it manually. You need to download a new file each time you want to upgrade Docker Engine.

    # Go to https://download.docker.com/linux/ubuntu/dists/

# Select your Ubuntu version in the list.

# Go to pool/stable/ and select the applicable architecture (amd64, armhf, arm64, or s390x).

# Download the following deb files for the Docker Engine, CLI, containerd, and Docker Compose packages:

    containerd.io_<version>_<arch>.deb
    docker-ce_<version>_<arch>.deb
    docker-ce-cli_<version>_<arch>.deb
    docker-buildx-plugin_<version>_<arch>.deb
    docker-compose-plugin_<version>_<arch>.deb

# ACTUALLY FILES ARE ALREADY DOWNLOADED FOR UBUNTU RELEASE "JAMMY", and "AMD64" ARCHITECTURE, 
# GET THEM FROM docker DIRECTORY IF YOUR RELEASE AND ARCHITECTURE IS THE SAME
# Otherwise, get versions applicable for your system from https://download.docker.com/linux/ubuntu/dists/

	containerd.io_1.7.25-1_amd64.deb
 	docker-ce_28.0.1-1~ubuntu.22.04~jammy_amd64.deb 
  	docker-ce-cli_28.0.1-1~ubuntu.22.04~jammy_amd64.deb 
  	docker-buildx-plugin_0.21.1-1~ubuntu.22.04~jammy_amd64.deb 
  	docker-compose-plugin_2.33.1-1~ubuntu.22.04~jammy_amd64.deb

# Install the .deb packages. Update the paths in the following example to where you downloaded the Docker packages.

 sudo dpkg -i ./containerd.io_<version>_<arch>.deb \
  ./docker-ce_<version>_<arch>.deb \
  ./docker-ce-cli_<version>_<arch>.deb \
  ./docker-buildx-plugin_<version>_<arch>.deb \
  ./docker-compose-plugin_<version>_<arch>.deb

# IF YOU USE PRE-DOWNLOADED FILES FROM docker DIRECTORY, YOU CAN USE THIS COMMAND 
# TO INSTALL DOCKER FROM DEB FILES:

sudo dpkg -i ./containerd.io_1.7.25-1_amd64.deb \
  ./docker-ce_28.0.1-1~ubuntu.22.04~jammy_amd64.deb \
  ./docker-ce-cli_28.0.1-1~ubuntu.22.04~jammy_amd64.deb \
  ./docker-buildx-plugin_0.21.1-1~ubuntu.22.04~jammy_amd64.deb \
  ./docker-compose-plugin_2.33.1-1~ubuntu.22.04~jammy_amd64.deb


# The Docker daemon starts automatically.

# Verify that the installation is successful by running the hello-world image:

 sudo service docker start

 sudo docker run hello-world

# This command downloads a test image and runs it in a container. When the container runs, it prints a confirmation message and exits.

# You have now successfully installed and started Docker Engine.

# Tip
# Receiving errors when trying to run without root?

# The docker user group exists but contains no users, which is why you’re required to use sudo to run Docker commands. Continue to Linux postinstall to allow non-privileged users to run Docker commands and for other optional configuration steps.

# SOURCE: https://docs.docker.com/engine/install/ubuntu/#install-from-a-package
