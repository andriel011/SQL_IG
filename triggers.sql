-- ==========================================
-- TRIGGER: No Self Follow
-- Prevents users from following themselves.
-- ==========================================

DELIMITER 

CREATE TRIGGER trg_NoSelfFollow
BEFORE INSERT ON Follows
FOR EACH ROW
BEGIN
    IF NEW.FollowerID = NEW.FollowingID THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT =
        'A user cannot follow themselves';
    END IF;
END 

DELIMITER ;
