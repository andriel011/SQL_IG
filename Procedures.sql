-- ==========================================
-- PROCEDURE: GetPostsByUser
-- Returns all posts created by
-- a specific user.
-- ==========================================

DELIMITER //

CREATE PROCEDURE GetPostsByUser(
    IN p_UserID INT
)
BEGIN
    SELECT
        PostID,
        Caption,
        CreatedAt
    FROM Posts
    WHERE UserID = p_UserID;
END //

DELIMITER ;
