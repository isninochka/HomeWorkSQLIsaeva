-- В рамках БД "видео-хостинг":
-- Создать таблицы реакций и комментариев
-- Добавить несколько записей в каждую таблицу выше

    CREATE TABLE video_comments (
    video_id int,
    created_at timestamp,
    author_id int,
    content text
    );

    INSERT INTO  video_comments (
    video_id int,  created_at timestamp,
    author_id int,  content text) 
    values(1, time,1,'New_test_comment_1'),
    (2, time,1,'New_test_comment_2');
    
    CREATE TABLE video_reactions (
    reaction_id int,
    created_at timestamp,
    author_id int,
    value int,
    video_id
    );
    
    INSERT INTO  video_reactions (
    reaction_id int, created_at timestamp,
    author_id int, val int, video_id)
    value(1, current_timestamp, 1, 5, 1),
    (2, current_timestamp, 1, 5, 1);
