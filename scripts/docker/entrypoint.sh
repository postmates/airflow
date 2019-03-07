#!/bin/bash
# setup latest airflow env (scheduler only)
if [ "$0" = "scheduler" ]; then
  bash $AIRFLOW_HOME/init-airflow-env.sh
fi

airflow "$@"
