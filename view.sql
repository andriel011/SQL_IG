-- ==========================================
-- VIEW: Main Feed
-- Displays each post with its author,
-- total likes, and total comments.
-- ==========================================

DROP VIEW IF EXISTS vw_MainFeed;

CREATE VIEW vw_MainFeed AS
SELECT
    p.PostID,
    u.Username,
    p.Caption,
    p.CreatedAt,
    COUNT(DISTINCT l.LikeID) AS TotalLikes,
    COUNT(DISTINCT c.CommentID) AS TotalComments
FROM Posts p
JOIN Users u
    ON p.UserID = u.UserID
LEFT JOIN Likes l
    ON p.PostID = l.PostID
LEFT JOIN Comments c
    ON p.PostID = c.PostID
GROUP BY
    p.PostID,
    u.Username,
    p.Caption,
    p.CreatedAt;


-- ==========================================
-- VIEW: User Followers
-- Shows the total number of followers
-- for each user.
-- ==========================================

DROP VIEW IF EXISTS vw_UserFollowers;

CREATE VIEW vw_UserFollowers AS
SELECT
    u.UserID,
    u.Username,
    COUNT(f.FollowerID) AS Followers
FROM Users u
LEFT JOIN Follows f
    ON u.UserID = f.FollowingID
GROUP BY
    u.UserID,
    u.Username;


--==========================================
-- VIEW: User Activity
-- Displays the total number of posts,
-- likes received, and followers for each user.
-- ==========================================

DROP VIEW IF EXISTS vw_UserActivity;

CREATE VIEW vw_UserActivity AS
SELECT
    u.UserID,
    u.Username,
    COUNT(DISTINCT p.PostID) AS TotalPosts,
    COUNT(DISTINCT l.LikeID) AS TotalLikesReceived,
    COUNT(DISTINCT f.FollowerID) AS TotalFollowers
FROM Users u
LEFT JOIN Posts p
    ON u.UserID = p.UserID
LEFT JOIN Likes l
    ON p.PostID = l.PostID
LEFT JOIN Follows f
    ON u.UserID = f.FollowingID
GROUP BY
    u.UserID,
    u.Username;
