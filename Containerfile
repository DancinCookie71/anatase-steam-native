FROM i.anatase.org/anatase:stable

# Add Negativo17 Steam Repo & Install Native Steam
RUN dnf config-manager --add-repo https://negativo17.org/repos/fedora-steam.repo && \
    dnf -y install steam

# Swap Flatpak Steam launch command with native Steam in anatase-gamescope
RUN sed -i 's/flatpak run com.valvesoftware.Steam/steam/g' /usr/bin/anatase-gamescope

# Cleanup (leave this here)
RUN rm -rf /var && \
    mkdir -p /var/tmp
