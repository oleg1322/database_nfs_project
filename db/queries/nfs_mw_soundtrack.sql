-- все треки Need for Speed: Most Wanted (2005)
SELECT st.track_name, st.author
FROM soundtracks st
JOIN general_information gi ON st.game_id = gi.id
WHERE gi.game_name = 'Need for Speed: Most Wanted';
