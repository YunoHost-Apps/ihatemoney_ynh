DEBUG = True
SQLALCHEMY_DATABASE_URI = 'mysql://ihatemoney:MY_MYSQL_PW@localhost/ihatemoney'
SQLACHEMY_ECHO = DEBUG
SECRET_KEY = "MY_SECRET_KEY"

MAIL_DEFAULT_SENDER = ("Budget manager", "MY_EMAIL")

try:
    from settings import *
except ImportError:
    pass
