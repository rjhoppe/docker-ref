FROM ubuntu:jammy AS final
# If you do not pass a target, the secret will appear at /run/secrets/[secret-name]
# Allows you to temporarily mount a secret inside your container and interact with it
# DO NOT save the secret into your image
RUN --mount=type=secret,id=mysecret,target=/var/secrets

# Use this command to build your container with your secret
# Doing it this way will ensure the secret is not stored in your image
# docker build --secret id=mysecret,src=$PWD/secretfile -t test .
