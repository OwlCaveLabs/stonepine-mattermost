FROM busybox:1.36-musl AS bb
FROM mattermost/mattermost-team-edition:latest

# BusyBox completo
COPY --from=bb /bin/busybox /bin/busybox

# Symlink ai comandi minimi che ti servono
RUN /bin/busybox --install -s /bin
