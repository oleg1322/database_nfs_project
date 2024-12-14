-- каких игровых механик нет в Need for Speed carbon
WITH all_features AS (
    SELECT 'story_mode' AS feature_name
    UNION ALL
    SELECT 'open_world'
    UNION ALL
    SELECT 'police'
    UNION ALL
    SELECT 'tuning'
    UNION ALL
    SELECT 'play_as_police'
    UNION ALL
    SELECT 'multiplayer'
),
carbon_features AS (
    SELECT 'story_mode' AS feature_name
    FROM game_features gf
    JOIN general_information gi ON gf.game_id = gi.id
    WHERE gi.game_name = 'Need for Speed: Carbon' AND gf.story_mode = TRUE
    UNION ALL
    SELECT 'open_world'
    FROM game_features gf
    JOIN general_information gi ON gf.game_id = gi.id
    WHERE gi.game_name = 'Need for Speed: Carbon' AND gf.open_world = TRUE
    UNION ALL
    SELECT 'police'
    FROM game_features gf
    JOIN general_information gi ON gf.game_id = gi.id
    WHERE gi.game_name = 'Need for Speed: Carbon' AND gf.police = TRUE
    UNION ALL
    SELECT 'tuning'
    FROM game_features gf
    JOIN general_information gi ON gf.game_id = gi.id
    WHERE gi.game_name = 'Need for Speed: Carbon' AND gf.tuning = TRUE
    UNION ALL
    SELECT 'play_as_police'
    FROM game_features gf
    JOIN general_information gi ON gf.game_id = gi.id
    WHERE gi.game_name = 'Need for Speed: Carbon' AND gf.play_as_police = TRUE
    UNION ALL
    SELECT 'multiplayer'
    FROM game_features gf
    JOIN general_information gi ON gf.game_id = gi.id
    WHERE gi.game_name = 'Need for Speed: Carbon' AND gf.multiplayer = TRUE
)
SELECT af.feature_name
FROM all_features af
LEFT JOIN carbon_features cf ON af.feature_name = cf.feature_name
WHERE cf.feature_name IS NULL;
