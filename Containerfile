FROM i.anatase.org/anatase:stable

# Add Negativo17 Steam Repo & Install Native Steam
RUN curl -o /etc/yum.repos.d/fedora-steam.repo https://negativo17.org/repos/fedora-steam.repo && \
    dnf -y install steam

# Cleanup (leave this here)
RUN rm -rf /var && \
    mkdir -p /var/tmp
