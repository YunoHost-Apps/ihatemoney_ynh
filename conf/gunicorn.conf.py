backlog = 2048
daemon = False
debug = True
workers = 3
logfile = "/var/log/__APP__/budget.gunicorn.log"
loglevel = "info"
bind = "unix:/tmp/budget.gunicorn___APP__.sock"
