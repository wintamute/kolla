#!/bin/bash
set -o errexit
set -o xtrace

echo "Checking hostbill bootstrap"
# Bootstrap and exit if KOLLA_BOOTSTRAP variable is set. This catches all cases
# of the KOLLA_BOOTSTRAP variable being set, including empty.
if [[ "${!KOLLA_BOOTSTRAP[@]}" ]]; then
    # import sql dump to db, get credentials from config.php
    echo "Running hostbill bootstrap"
    exec /var/lib/kolla/config_files/bootstrap_hostbill.sh
    exit 0
fi