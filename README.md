### Hexlet tests and linter status:
[![Actions Status](https://github.com/sibgatullin-i/devops-for-programmers-project-76/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/sibgatullin-i/devops-for-programmers-project-76/actions)

## Установка

```bash
ansible-galaxy install -r requirements.yml
```

## Подготовка серверов

```bash
make prepare
```

## Деплой приложения

```bash
make deploy
```

## Структура проекта

- `inventory.ini` — список серверов
- `group_vars/all.yml` — переменные
- `playbook.yml` — установка pip и docker
- `deploy.yml` — деплой приложения
- `requirements.yml` — роли Ansible Galaxy
- `templates/redmine.env.j2` — .env файл для контейнера
- `Makefile` — команды
- `README.md` — инструкция