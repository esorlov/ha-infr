## Инструкция по проверке

- Выполните развертывание, запустив из каталога лабораторной

~~~
$ terraform apply
~~~

- По завершении развертывания будет выведена строка с внешним адресом развернутой ВМ

~~~
external_ip_address_vm_1 = "X.X.X.X"
~~~

- Проверить работоспособность экземпляра ВМ и nginx на нем можно обратившись на 80 порт указанного внешнего адреса, например:

~~~
$ curl X.X.X.X
~~~

