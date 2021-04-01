#!/bin/bash
# Script para automatizar start/stop dos recursos na OCI

# gustavo.lange@gmail.com
# https://github.com/glange84

# Alterar para o local da instalacao da cli do oci
ocicli=/root/bin/oci

# https://docs.oracle.com/en-us/iaas/tools/oci-cli/2.22.1/oci_cli_docs/cmdref/compute/instance/action.html
# executar "sh ocistarstop.sh (STOP,START,SOFTRESET,RESET,SOFTSTOP,SENDDIAGNOSTICINTERRUPT) OCID da instancia"
$ocicli compute instance action --action $1 --instance-id $2  >> /var/log/$1-$2.log 2>&1
