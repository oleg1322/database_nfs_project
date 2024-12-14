-- игра под требования
SELECT g.game_name, g.release_year, sr.min_ram, sr.min_disk_space, sr.min_gpu
FROM general_information g
JOIN system_requirements sr ON g.id = sr.game_id
WHERE sr.min_disk_space < '40GB' AND sr.rec_gpu < '4GB' AND sr.rec_ram <= '4GB' AND g.release_year > 2010;
