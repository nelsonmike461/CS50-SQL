SELECT username
FROM (
    SELECT to_user_id, COUNT(*) as message_count
    FROM messages
    GROUP BY to_user_id
) AS msg_count
JOIN users ON users.id = msg_count.to_user_id
ORDER BY message_count DESC, username ASC
LIMIT 1;
