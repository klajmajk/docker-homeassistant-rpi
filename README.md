sudo docker run -i -t -p 8123:8123 --name homeassistant --net=host --restart unless-stopped -v /opt/Docker/homeassistant/hass/volume/.homeassistant:/root/.homeassistant/ klajmajk/homeassistant

