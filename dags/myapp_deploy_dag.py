from datetime import datetime
from airflow import DAG
from airflow.operators.bash_operator import BashOperator

default_args = {
    'start_date': datetime(2023, 3, 28)
}

dag = DAG(
    'myapp_deploy',
    default_args=default_args,
    schedule_interval=None,
)

deploy_task = BashOperator(
    task_id='deploy_task',
    bash_command='/path/to/deploy.sh',
    dag=dag,
)
