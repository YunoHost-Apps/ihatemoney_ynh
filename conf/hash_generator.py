#!/usr/bin/env python
import sys
from werkzeug.security import generate_password_hash

print(generate_password_hash(sys.argv[1]))
