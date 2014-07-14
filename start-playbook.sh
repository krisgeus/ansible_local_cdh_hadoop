#!/bin/bash

read -t 60 -p "Please enter the directory where the local CDH will be installed (directory will be created) [default: /tmp/hadoop/cdh5]: " INSTALL_DIR

if [ -z "${INSTALL_DIR}" ]; then
  INSTALL_DIR=/tmp/hadoop/cdh5
  ansible-playbook -i hosts local-cdh5.yml
else
  ansible-playbook -i hosts local-cdh5.yml  --extra-vars install_dir=${INSTALL_DIR}
fi

echo -e "Installation off CDH Finished \n\nTo use local mode execute:\n  \$ source ${INSTALL_DIR}/.bash_profile_hadoop\n  \$ switch_local_cdh5\n\nTo use pseudo distributed mode:\n  \$ source ${INSTALL_DIR}/.bash_profile_hadoop\n  \$ switch_pseudo_cdh5\n  \$ hadoop namenode -format (only first time!!)\n  \$ start-dfs.sh\n  \$ start-yarn.sh\n\nTo stop:\n  \$ stop-yarn.sh\n  \$ stop-dfs.sh\n"