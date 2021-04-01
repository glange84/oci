# OCI
O oci não possui nenhum recurso para agendamento de start/stop de recursos, para podermos desligar e ligar recursos automaticamente, podemos utilizar uma vm do tipo always free.

## Subindo uma vm alway free
Entre na console web, vá até a opção para criar uma nova instância, nas opções selecione um shape always free disponível

## Habilitando a CLI
Para habilitar a cli que será responsável por enviar os comandos de start/stop siga a documentação https://docs.oracle.com/pt-br/iaas/Content/API/SDKDocs/cliinstall.htm

## Usando o script
A execução do script é simples, copie ele para um local de sua preferência, para desligar uma vm execute ```"sh ocistartstop SOFTSTOP ociddavm"``` o log será salvo no /var/log
para ligar uma vm execute ```"sh START ociddavm"```
