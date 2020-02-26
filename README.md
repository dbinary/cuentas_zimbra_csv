# cuentas_zimbra_csv
Script para generar archivo zmprov con cuentas a crear para Zimbra Collaboration Plantform y password autogenerado

### Uso
```
autoaccounts.sh ejemplo.csv |tee cuentas.zmprov
```
### En tu servidor zimbra con usuario zimbra ejecutar
```
zmprov < cuentas.zmprov
```
