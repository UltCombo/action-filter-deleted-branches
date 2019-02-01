FROM alpine:3.9

LABEL "com.github.actions.name"="Filter deleted branches"
LABEL "com.github.actions.description"="Stops workflow if push event is triggered by deleting a branch."
LABEL "com.github.actions.icon"="filter"
LABEL "com.github.actions.color"="black"

LABEL "repository"="https://github.com/UltCombo/action-filter-deleted-branches"
LABEL "homepage"="https://github.com/UltCombo/action-filter-deleted-branches#github-action-to-filter-deleted-branches"
LABEL "maintainer"="UltCombo <ultcombo@gmail.com>"

RUN apk --no-cache add curl \
    && curl -sSLH 'Accept: application/octet-stream' https://github.com/stedolan/jq/releases/download/jq-1.6/jq-linux64 > /usr/bin/jq \
    && chmod +x /usr/bin/jq

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
