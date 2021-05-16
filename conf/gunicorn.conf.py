backlog = 2048
daemon = False
debug = True
workers = 3
logfile = "/var/log/__APP__/__APP__.gunicorn.log"
loglevel = "info"
bind = "unix:/tmp/__APP__.gunicorn.sock"
