#!/usr/bin/env python

import os
import subprocess
import re

with open('.env') as fp:
	settings = fp.read()

current_branch = subprocess.check_output('git rev-parse --abbrev-ref HEAD', shell=True).decode('utf-8').strip()

if '/prod' in current_branch:
	db_name = 'common_fraznet'

elif 'dev' in current_branch:
	db_name = 'dev_fraznet'

elif 'logistics' in current_branch:
	db_name = 'logistics_fraznet'

elif current_branch == 'prod_server':
	# A common branch for now
	db_name = 'prod_fraznet'
else:
	# Do nothing
	exit()

print("Changing environment's database name to: {}".format(db_name))
result = re.sub(r'^DB_NAME\s+=\s+([\w_]+)',
       'DB_NAME = {}'.format(db_name), settings, flags=re.MULTILINE)

with open('.env', 'w') as fp:
	fp.write(result)
