#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# (c) ACE 

import os

class Config(object):
    # get a token from @BotFather
    BOT_TOKEN = os.environ.get("BOT_TOKEN", "7182015104:AAGMvlwvlFtBOanm0hQK0VWVwf7xJOZ6aTI")
    API_ID = int(os.environ.get("API_ID", "25586552"))
    API_HASH = os.environ.get("API_HASH", "f265cba9d76dc6ad70914accbe758f47")
    AUTH_USERS = os.environ.get("AUTH_USERS", "1368753935")
