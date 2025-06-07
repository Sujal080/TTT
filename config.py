#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# (c) ACE 

import os

class Config(object):
    # get a token from @BotFather
    BOT_TOKEN = os.environ.get("BOT_TOKEN", "7460074981:AAH3xfM8LwbSaxqh9HMW_1QKfYXSHKZBRU0")
    API_ID = int(os.environ.get("API_ID", "26330942"))
    API_HASH = os.environ.get("API_HASH", "5de9fd033aa828dfd3bf0c28adeee660")
    AUTH_USERS = os.environ.get("AUTH_USERS", "6883471516")
