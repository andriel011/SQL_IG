SELECT
    u.Username,
    COUNT(p.PostID) AS TotalPosts
FROM users u
LEFT JOIN posts p
    ON u.UserID = p.UserID
GROUP BY u.UserID, u.Username;

SELECT
    u.Username,
    COUNT(f.FollowerID) AS Followers
FROM users u
LEFT JOIN follows f
    ON u.UserID = f.FollowingID
GROUP BY u.UserID, u.Username
ORDER BY Followers DESC;

SELECT
    u.Username,
    COUNT(c.CommentID) AS TotalComments
FROM users u
JOIN comments c
    ON u.UserID = c.UserID
GROUP BY u.UserID, u.Username
ORDER BY TotalComments DESC;