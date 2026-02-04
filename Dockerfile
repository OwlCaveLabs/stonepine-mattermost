# Stage: preparo /bin con busybox + symlink (qui RUN funziona perché busybox ha sh)
FROM busybox:1.36-musl AS bb
RUN /bin/busybox --install -s /bin

# Stage finale: immagine Mattermost (no RUN qui)
FROM mattermost/mattermost-team-edition:latest
COPY --from=bb /bin /bin
