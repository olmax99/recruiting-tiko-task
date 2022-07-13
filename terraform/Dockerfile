FROM hashicorp/terraform:1.2.3

LABEL AUTHOR DevOps Team
LABEL EMAIL devops@tiko.energy

WORKDIR /app

COPY *.tf .
COPY modules/ modules/

ENTRYPOINT [ "/bin/sh", "-c", "terraform" ]