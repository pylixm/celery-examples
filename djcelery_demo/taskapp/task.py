# -*- coding:utf-8 -*- 
"""
该@shared_task装饰可以让你创建任务，而无需任何具体的celery实例
"""
from __future__ import absolute_import

from celery import shared_task


@shared_task
def add(x, y):
    return x + y


@shared_task
def mul(x, y):
    return x * y


@shared_task
def xsum(numbers):
    return sum(numbers)