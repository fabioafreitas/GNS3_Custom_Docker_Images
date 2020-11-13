[configurando o mysql no ubuntu](https://www.digitalocean.com/community/tutorials/how-to-install-mariadb-on-ubuntu-18-04-pt)

[configurando o mysql para conexões remotas](https://stackoverflow.com/questions/11223235/mysql-root-access-from-all-hosts/11225588#11225588)

1. inicie serviço mysql
```
service mysql start
```

2. mude para o seguinte diretorio
```
/etc/mysql/mariadb.conf.d
```

3. entre com o editor de texto nano no arquivo 50-server.cnf
```
nano 50-server.cnf
```

4. procure a linha com o commando **bind-address = 127.0.0.1** e adicione um **#** no início dela.
```
#bind-address = 127.0.0.1
```

5. Salve o arquivo clicando em CTRL+O e Enter

6. feche o arquivo com CTRL+C

7. entre no mysql executando o comando abaixo
```
mysql
```
8. execute o comando abaixo dentro do mysql
```
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'password';
```
9. feche o mysql
```
exit
```

10. reinicie o serciço do mysql, para que as alterações sejam reconhecidas
```
service mysql restart
```