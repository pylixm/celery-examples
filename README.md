# celery-examples
celery 个人使用demo

## 软件环境：

- python 2.7 

- django 1.7 

## django-celery：

#### 软件包：

    - django
    - django-celery

#### 功能： 

    - 异步任务使用实例。
    - 计划任务

#### 运行：
    
    # 启动 worker  -- 运行相当于消费者 
    celery -A djcelery_demo worker -l info 
    # 启动处理计划任务的 worker -B 相当于自产自销
    celery -A djcelery_demo worker -B -l info
    # 计划任务使用  --- 运行相当于生产者
    celery beat 
    # 使用 django 数据库来管理计划任务的配置 
    celery -A proj beat -S djcelery.schedulers.DatabaseScheduler
    
    # 停止worker
    ps auxww | grep 'celery worker' | awk '{print $2}' | xargs kill -9 
    
    # 重启
    kill -HUP $pid
    
    生产环境建议 使用supervisor 等软件管理
    参考：http://docs.jinkan.org/docs/celery/tutorials/daemonizing.html#daemonizing