# Template de desarrollo Django ![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)

> Python

> Django

> Docker

> Postgres

> Nginx

> CI/CD

Descripción del proyecto : Proyecto template de directrices para la estandarización de un proyecto, el objetivo del proyecto es que los desarrolladores puedan seguir la estructura conformada por este proyecto tanto como su archivo README, estructuras de carpeta estándar y su ciclo básico de CI/CD, con el motivo de mejorar y facilitar los tiempos de desarrollo y despliegue en cada uno de los proyectos.

## Contenido

- [Comenzando](#comenzando)
    - [Prerrequisitos](#prerrequisitos)
    - [Instalación](#instalación)
    - [Docker](#docker)
    - [Desarrollo](#desarrollo)
- [Pruebas](#pruebas)
    - [Unitarias](#unitarias)
- [Equipo](#equipo)

## Comenzando

A continuación se listarán todos los puntos necesarios para comenzar a desarrollar con el proyecto actual desde su fase de instalación hasta levantar un ambiente local de desarrollo sin problemas, se incluirán instrucciones de ejecución de comandos, testing, reglas y contexto de como esta estructurado el proyecto incluyendo su estructura de carpetas junto con su descripción.

## Prerrequisitos

1. Python 3.5+
    * https://www.python.org/downloads/
2. Docker
    * https://docs.docker.com/get-docker/

* **Recuerda configurar tus llaves ssh**
    * https://docs.github.com/en/enterprise/2.15/user/articles/adding-a-new-ssh-key-to-your-github-account
    * https://docs.gitlab.com/ee/ssh/

## Instalación

* Instalación vía requirements.txt:

```bash
$ cd django_base
$ python3 -m virtualenv env
$ source env/bin/activate
$ pip3 install -r requirements.txt
```

## Docker

* Docker compose

```bash
$ docker-compose up -d --build
$ docker-compose exec web python manage.py migrate --noinput # Aplicar migraciones
$ docker-compose exec web python manage.py createsuperuser # Crear súper usuario
$ docker-compose logs -f # Ayuda
$ docker-compose down # Bajar los servicios
```

## Desarrollo

Instrucciones básicas para levantar un ambiente de desarrollo local.

Ejecutar `python3 manage.py runserver` para un servidor de desarrollo. La aplicación se recargará automáticamente si cambias cualquiera de los archivos fuente si estas en el modo watch.

```bash
$ python3 manage.py runserver
```

## Pruebas

Las pruebas son necesarias para la construcción de nuevas funcionalidades dentro del proyecto, estas pruebas están ligadas a un ciclo de vida de CI/CD que se ejecutará al subir un nuevo cambio en las ramas, se aconseja ejecutar pruebas unitarias o de integración antes de subir una nueva funcionalidad al repositorio, esto es importante para evitar posibles errores en el futuro.

## Unitarias

Instrucciones básicas para ejecutar pruebas unitarias en ambiente de desarrollo local.

Ejecutar `python3 manage.py test` para ejecutar las pruebas de la unidad a través de [Django Testing](https://docs.djangoproject.com/en/3.0/topics/testing/).

```bash
$ python3 manage.py test
```
## Equipo

Desarrollado por Diego Cortés

* dcortes.net@gmail.com
