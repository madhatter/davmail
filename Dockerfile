FROM ops-cp-registry.lhotse.ov.otto.de/fbechste/davmail

ADD davmail.properties .
ADD fetch-calendar.sh .

USER nobody
