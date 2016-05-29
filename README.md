# celery-examples
celery 个人使用demo

## 软件环境：

- python 2.7 

- django 1.7 

## 分支

### django-celery：

#### 软件包：
    - django
    - django-celery

#### 功能： 
    - 异步任务使用实例。
    - 计划任务

#### 运行：
    
    # 启动 worker 
    celery -A djcelery_demo worker -l info 
    # 当有计划任务时增加参数 B
    celery -A djcelery_demo worker -B -l info
    # 停止worker
    ps auxww | grep 'celery worker' | awk '{print $2}' | xargs kill -9 
    # 重启
    kill -HUP $pid
    生产环境建议 使用supervisor 等软件管理；
    
### celery ：
    
#### 软件包：
    - django
    - celery

#### 功能： 
    - 异步任务使用实例。
    - 计划任务
    
#### 运行：
    
    # 启动 worker 
    celery -A celery worker -l info 
    # 当有计划任务时增加参数 B
    celery -A celery worker -B -l info
    # 停止worker
    ps auxww | grep 'celery worker' | awk '{print $2}' | xargs kill -9 
    # 重启
    kill -HUP $pid
    生产环境建议 使用supervisor 等软件管理；