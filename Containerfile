FROM i.anatase.org/anatase:stable

# Do your thing...
RUN dnf -y install dnf-plugins-core \
    && dnf -y copr enable codifryed/CoolerControl \
    && dnf -y install coolercontrol \
    && systemctl enable coolercontrold

RUN dnf clean all && \
    rm -rf /var/cache
