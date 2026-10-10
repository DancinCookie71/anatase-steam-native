FROM i.anatase.org/anatase:stable

# Do your thing...
RUN  dnf install dnf-plugins-core \
    && dnf copr enable codifryed/CoolerControl \
    && dnf install coolercontrol \
    && systemctl enable --now coolercontrold

RUN dnf clean all &&
    rm -rf /var/cache