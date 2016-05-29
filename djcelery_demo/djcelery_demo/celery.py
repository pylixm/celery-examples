# -*- coding:utf-8 -*- 
from __future__ import absolute_import

import os

from celery import Celery, platforms

# set the default Django settings module for the 'celery' program.
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'djcelery_demo.settings')

from django.conf import settings  # noqa

app = Celery('djcelery_demo')

# Using a string here means the worker will not have to
# pickle the object when using Windows.
# 用来发现放到 django settings 中的 celery 配置
app.config_from_object('django.conf:settings')
# 用来发现放到django app中的task 
app.autodiscover_tasks(lambda: settings.INSTALLED_APPS)


# For the database backend you must use:
app.conf.update(
    CELERY_RESULT_BACKEND='djcelery.backends.database:DatabaseBackend',
)
# For the cache backend you can use:
# app.conf.update(
#     CELERY_RESULT_BACKEND='djcelery.backends.cache:CacheBackend',
# )

app.conf.update(
    BROKER_URL = 'django://'
)

# 允许root 用户运行celery
platforms.C_FORCE_ROOT = True

@app.task(bind=True)
def debug_task(self):
    print('Request: {0!r}'.format(self.request))