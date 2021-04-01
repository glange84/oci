# OCI - Script para agendar Start/Stop de Recursos
O oci não possui nenhum recurso para agendamento de start/stop de recursos, para podermos desligar e ligar recursos automaticamente, podemos utilizar uma vm do tipo always free.

## Subindo uma vm always free
Entre na console web, vá até a opção para criar uma nova instância, nas opções selecione um shape always free disponível

## Habilitando a CLI
Para habilitar a cli que será responsável por enviar os comandos de start/stop siga a documentação https://docs.oracle.com/pt-br/iaas/Content/API/SDKDocs/cliinstall.htm

## Usando o script
Para saber o OCID da VM que irá ligar/desligar, vá até os detalhes da VM no console
Para saber mais sobre os comandos que podem ser enviados, vá até a documentação em https://docs.oracle.com/en-us/iaas/tools/oci-cli/2.12.7/oci_cli_docs/cmdref/compute/instance/action.html
A execução do script é simples, copie ele para um local de sua preferência, para desligar uma vm execute ```"sh ocistartstop SOFTSTOP ociddavm"``` o log será salvo no /var/log
para ligar uma vm execute ```"sh START ociddavm"```

Para fazer o processo automaticamente basta agendar o Script no Cron
Por exemplo para ligar uma VM de segunda-feira a sexta-feira as 07:00 horas da manhã:
```
00 07 * * 1-5 /root/ocistartstop.sh START ocid1.instance.oc1.us-esst-1.antxeljrhtfw7eycxtr7t4m73exod5pugzpv2ysawimebiqp3qqwpfxbyqra
```
