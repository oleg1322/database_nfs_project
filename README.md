# Описание БД
База данных по серии игр Need for Speed, база данных содержит в себе таблицу с информацией об игре: название, год выхода, студия-разработчик и платформы, таблицу с информацией о машинах, которые появлялись в серии, а именно: марку и модель, массу, объём двигателя, максимальную скорость, разгон до 100 км/ч и примерную цену в рублях, кроме того автоматически считается налог на машину, таблицу с несколькими саундтреками из каждой части игры, если в этой игре была музыка, таблицу с игровыми механиками: открытый мир, полиция, сюжет и т.д., таблицу с системными требованиями, таблицу для связи N к N, т.к. в некоторые машины встречаются далеко ни в одной игре, и таблицу с налогом на лошадиные силы. 
БД может быть использована для просмотра информации о машинах в каждой части игры, если человек хочет послушать музыку из каждой части, т.к. в таблице есть поле с ссылкой на ютуб для каждого трека, если человек захочет скачать себе одну из частей, но не знает потянет ли ее его компьютер, он может посмотреть системные требования, а так же человек может заранее понять будет ли эта игра ему интересна, посмотрев на список игровых механик (если игроку очень хочется поиграть за полицию, не во всех играх есть такая возможность) или если он фанат определенной машины, есть возможность узнать, присутствует ли она в игре.
# Схема БД
![image](https://github.com/user-attachments/assets/4387691d-406b-4ac2-ab89-5e16da906e13)
# Что это и как с этим работать
## Примеры моих запросов к БД
- каких игровых механик нет в Need for Speed carbon
 машины с цифрами в модели
- cамая дорогая и дешевая машины
- игра под требования системы
- какие машины в среднем быстрее форд или феррари
- машины из Японии
- машины массой до тонный
- вывода всех машин не которых можно погонять под трек linkin park
- самая часто встречающаяся машина в серии
- вывод количества машин для каждой марки
- все треки Need for Speed Most Wanted
- игры без японских машин
- игры без полиции
- года начиная с 2000 до 2024 в которые н выходили игры nfs
- машины которые невозможно найти на российском рынке (цена NULL)
- эксклюзивы на пк
- игры выходившие на Play Station
- игры с полицией и открытым миром
- средний налог на все porsche
- ютуб ссылки на все треки Static-X

# Процедуры и триггеры
В БД присутствуют процедуры на создание, удаление и редактирование машины, получение машины введенной марки и процедура н подсчет средней максимальной скорости, параметры для создания – это параметры машины из пункта 1, параметры для обновления это айди машины и параметры из пункта 1, параметры для удаления – айди, для средней скорости и машин – марка нужной машины. Триггер автоматически вычисляет поле налога на машину, количество лошадиных сил умножается на стоимость каждой лошадиной силы в зависимости от мощности машины.
## Индексы 
Поиск по марке, пожалуй, самый популярный, поэтому было принято решение индексировать именно его, для ускорения запросов.

## Структура репозитория
- скрипты для инициализации лежат в папке
```
db/init
```
- запросы в
```
db/queries
```
- процедуры в 
```
db/procedures
```
- код фронтенда и бэкенда в папках
```
nfs_app/frontend
nfs_app/backend
```
соответсвенно

# Инструкция по запуску проекта
1. Войти под пользователем `postgres`

```sh
sudo -i -u postgres
```
2) Создать базу данных:
```
psql
CREATE DATABASE need_for_speed;
\q
```
3) Выполнять скрипты для заполнения строго по порядку:
```
psql need_for_speed < nfs/db/init/init.sql
psql need_for_speed < nfs/db/init/init_tax.sql
psql need_for_speed < nfs/db/init/insert_cars_gen_info.sql
psql need_for_speed < nfs/db/init/insert_game_info.sql
psql need_for_speed < nfs/db/init/insert_game_features.sql
psql need_for_speed < nfs/db/init/insert_soundtracks.sql
psql need_for_speed < nfs/db/init/insert_sys_req.sql
psql need_for_speed < nfs/db/init/cars_games_connect.sql
```
5) Запросы лежат в папке queries, запросы выполняются как 
```
psql need_for_speed < nfs/db/queries/запрос
```
6) Для зауска веб-интерфейса нужно выйти из пользователя postgres
```
exit
```
7) Перейти в папку с бэкендом и запустить его
```
cd /nfs/nfs_app/backend
npx ts-node index.ts
```
8) Перейти в папку с фронтендом и запустить его
```
cd ../frontend
npm start
```
9) Войти в браузер и в поисковой строке ввести 
```
localhost:3000 
```
или перейти на нужный порт, который будет в терминале
