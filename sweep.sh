#!/bin/bash

ACTION=${1:-"launch"}

if [[ "$ACTION" != "launch" && "$ACTION" != "delete_incomplete" ]]; then
       echo "Usage: $0 [launch|delete_incomplete]"
       exit 1
else
       echo "Running DomainBed sweep with action: $ACTION"
fi

# This script is used to run a DomainBed sweep with specified parameters.
python -m domainbed.scripts.sweep $ACTION \
       --data_dir=./domainbed/data \
       --output_dir=results \
       --command_launcher local \
       --algorithms ERM CORAL Mixup ERMPlusPlus ADRMX URM \
       --datasets DomainNet  \
       --n_hparams 3 \
       --n_trials 1 #--single_test_envs
       
