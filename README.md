Just some basic applications and security configuration for my Raspberry Pi server. 
Just learning some Ansible.

If you are looking for a good Ansible playbook that sets everything up on your server for you... this is not for you.
Go elsewhere, I recommend [https://ansible-nas.io/](https://ansible-nas.io/)
If you are like me and enjoy toying around with Ansible to do things that previous people have already done for the sake of learning experience... you are in the right place.

This repo is aimed towards my personal needs.
But if you find something or learn something useful here, by all means feel free to use it.

Soooo.... what exactly does this playbook do? Glad you asked.

## Basic Security stuff

- Setup fail2ban
- Setup ufw

blaahhblahhblahh basic boring server stuff...

## Install Docker applications

- Portainer
- NginxProxyManager
- Ghost
- Miniflux (RSS reader)
- slskd (SoulSeek client)
  - auto transfer downloads to music folder using inotify

## Auto updating Docker containers

Running watchtower as a cronjob updating and recreating all containers over night.

---

More to come in the future.
This is not production ready.

TODO:
- [ ] *Maybe use templates* instead of manually copying docker-compose files
- [ ] Install Docker
- [x] Auto update Docker containers (still testing)
- [x] Fix file permissions created by Docker containers
  - Figured out just use ``user: "1000:1000"`` in docker-compose file
- [ ] More flexible docker-compose configurations
- [ ] Samba Media Sharing
