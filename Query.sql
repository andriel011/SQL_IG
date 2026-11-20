-- ==========================================
-- QUERY 1: Total Posts Per User
-- Displays how many posts each user has created.
-- ==========================================

SELECT
    u.Username,
    COUNT(p.PostID) AS TotalPosts
FROM Users u
LEFT JOIN Posts p
    ON u.UserID = p.UserID
GROUP BY
    u.UserID,
    u.Username;


-- ==========================================
-- QUERY 2: Followers Count
-- Displays users ordered by number of followers.
-- ==========================================

SELECT
    u.Username,
    COUNT(f.FollowerID) AS Followers
FROM Users u
LEFT JOIN Follows f
    ON u.UserID = f.FollowingID
GROUP BY
    u.UserID,
    u.Username
ORDER BY Followers DESC;


-- ==========================================
-- QUERY 3: User Comment Activity
-- Shows how many comments each user has made.
-- ==========================================

SELECT
    u.Username,
    COUNT(c.CommentID) AS TotalComments
FROM Users u
JOIN Comments c
    ON u.UserID = c.UserID
GROUP BY
    u.UserID,
    u.Username
ORDER BY TotalComments DESC;


-- ==========================================
-- QUERY 4: Most Liked Posts
-- Displays posts sorted by total likes.
-- ==========================================

SELECT
    p.PostID,
    p.Caption,
    COUNT(l.LikeID) AS TotalLikes
FROM Posts p
LEFT JOIN Likes l
    ON p.PostID = l.PostID
GROUP BY
    p.PostID,
    p.Caption
ORDER BY TotalLikes DESC;


-- ==========================================
-- QUERY 5: Posts By Category
-- Displays the number of posts in each category.
-- ==========================================

SELECT
    c.CategoryName,
    COUNT(p.PostID) AS TotalPosts
FROM Categories c
LEFT JOIN Posts p
    ON c.CategoryID = p.CategoryID
GROUP BY
    c.CategoryName;


-- ==========================================
-- QUERY 6: Users And Their Account Types
-- Displays all users and their account type.
-- ==========================================

SELECT
    u.Username,
    a.TypeName
FROM Users u
JOIN Account_Types a
    ON u.AccountTypeID = a.AccountTypeID;


-- ==========================================
-- QUERY 7: Posts With Author Information
-- Displays each post and its author.
-- ==========================================

SELECT
    p.PostID,
    p.Caption,
    u.Username
FROM Posts p
JOIN Users u
    ON p.UserID = u.UserID;


-- ==========================================
-- QUERY 8: Users Following Other Users
-- Displays follower-following relationships.
-- ==========================================

SELECT
    u1.Username AS Follower,
    u2.Username AS Following
FROM Follows f
JOIN Users u1
    ON f.FollowerID = u1.UserID
JOIN Users u2
    ON f.FollowingID = u2.UserID;


-- ==========================================
-- QUERY 9: Average Likes Per Post
-- Calculates the average number of likes
-- received by posts.
-- ==========================================

SELECT
    AVG(LikeCount) AS AverageLikesPerPost
FROM (
    SELECT
        COUNT(LikeID) AS LikeCount
    FROM Likes
    GROUP BY PostID
) AS PostLikes;


-- ==========================================
-- QUERY 10: Top Active Users
-- Displays users with the highest number
-- of published posts.
-- ==========================================

SELECT
    u.Username,
    COUNT(p.PostID) AS TotalPosts
FROM Users u
JOIN Posts p
    ON u.UserID = p.UserID
GROUP BY
    u.UserID,
    u.Username
ORDER BY TotalPosts DESC
LIMIT 5;
