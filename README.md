для запуска проекта нужно:
1) Войти под пользователем postgres 
git push -u origin main
2) Создать базу данных:
psql, затем CREATE DATABASE need_for_speed, затем \q
3) Выполнять скрипты для заполнения строго по порядку:
psql need_for_speed < nfs/db/init/init.sql
psql need_for_speed < nfs/db/init/init_tax.sql
psql need_for_speed < nfs/db/init/insert_cars_gen_info.sql
psql need_for_speed < nfs/db/init/insert_game_info.sql
psql need_for_speed < nfs/db/init/insert_game_features.sql
psql need_for_speed < nfs/db/init/insert_soundtracks.sql
psql need_for_speed < nfs/db/init/insert_sys_req.sql
psql need_for_speed < nfs/db/init/cars_games_connect.sql
5) Запросы лежат в папке queries, запросы выполняются как psql need_for_speed < nfs/db/queries/запрос
6) Для зауска веб-интерфейса нужно выйти из пользователя postgres
exit
7) Перейти в папку с бэкендом и запустить его
cd /nfs/nfs_app/backend
npx ts-node index.ts
8) перейти в папку с фронтендом и запустить его
cd ../frontend
npm start
9) Войти в браузер и в поисковой строке ввести localhost:3000 или перейти на нужный порт, который будет в терминале
