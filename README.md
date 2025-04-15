# Веб-додаток з Docker та Nginx

Цей проєкт демонструє запуск простого веб-додатку з використанням Docker та Nginx.

## Структура проєкту

- `index.html`, `page1.html`, `page2.html`, `page3.html` - HTML-сторінки
- `style.css` - Таблиця стилів CSS
- `Dockerfile` - Конфігурація Docker
- `nginx-conf/default.conf` - Конфігурація Nginx

## Налаштування Docker

Застосунок контейнеризовано за допомогою Docker, де Nginx виступає у ролі веб-сервера.

### Конфігурація

1.  **Dockerfile**:

    - Базується на образі `nginx:alpine`
    - Копіює HTML/CSS файли до робочої директорії Nginx (`/usr/share/nginx/html`)
    - Копіює користувацьку конфігурацію Nginx
    - Відкриває порт 8080

2.  **Конфігурація Nginx**:
    - Слухає на порту 8080
    - Роздає статичні файли з директорії `/usr/share/nginx/html`
    - Використовує `index.html` як сторінку за замовчуванням

## Як запустити

1.  Зберіть Docker-образ:

    ```bash
    docker build -t web-app .
    ```

2.  Запустіть контейнер:

    ```bash
    docker run -d -p 8080:8080 --name web-container web-app
    ```

3.  Доступ до застосунку:
    - Відкрийте http://localhost:8080 у вашому веб-браузері

## Команди керування

- Зупинити контейнер:

  ```bash
  docker stop web-container
  ```

- Запустити контейнер:

  ```bash
  docker start web-container
  ```

- Видалити контейнер:

  ```bash
  docker rm web-container
  ```

- Видалити образ:
  ```bash
  docker rmi web-app
  ```
