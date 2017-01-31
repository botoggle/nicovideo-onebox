# Nicovideo Onebox Wrapper

Nicovideo.jp has decided to join us all in the 21st century and has added an HTML5 player. Along with it, they've added an _embeddable_ HTML5 player, so let's wrap that instead of letting the automagical wrapper try to choke itself around a Flash player.

## Usage
Plug-and-play. 

## Installation
* Add this repo to your app.yml, as usual.
```yml
hooks:
  after_code:
    - exec:
        cd: $home/plugins
        cmd:
          - mkdir -p plugins
          - git clone https://github.com/discourse/docker_manager.git
          - git clone https://github.com/botoggle/nicovideo-onebox.git
```
* Rebuild the container.
```bash
cd /var/discourse
./launcher rebuild app
```
* Wow, you did it!

## License
I don't really care, so, flip a coin... MIT!
