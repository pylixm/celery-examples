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
from datetime import timedelta
app.conf.update(
    ##BROKER_URL = 'django://'
    BROKER_URL = 'redis://localhost:6379/0',
    CELERY_ACCEPT_CONTENT = ['json'],
    CELERY_TASK_SERIALIZER = 'json',
    CELERY_RESULT_SERIALIZER = 'json',
    CELERYBEAT_SCHEDULE = {
        'add-every-30-seconds': {
            'task': 'taskapp.tasks.add',
            'schedule': timedelta(seconds=10),
            'args': (16, 16)
        },
    },
    CELERY_TIMEZONE = 'UTC',
)

# 允许root 用户运行celery
platforms.C_FORCE_ROOT = True


@app.task(bind=True)
def debug_task(self):
    print('Request: {0!r}'.format(self.request))