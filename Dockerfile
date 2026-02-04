# Stage 1: prendo busybox (contiene sh)
FROM busybox:1.36-musl AS bb

# Stage 2: base Mattermost ufficiale
FROM mattermost/mattermost-team-edition:latest

# Aggiungo una shell: Railway/exec tools spesso si appoggiano a /bin/sh
COPY --from=bb /bin/busybox /bin/sh
