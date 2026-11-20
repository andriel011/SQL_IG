USE InstagramDB;

-- ==========================================
-- ACCOUNT TYPES
-- ==========================================

INSERT INTO Account_Types (TypeName)
VALUES
('Personal'),
('Creator'),
('Business');

-- ==========================================
-- CATEGORIES
-- ==========================================

INSERT INTO Categories (CategoryName)
VALUES
('Gaming'),
('Technology'),
('Photography'),
('Travel'),
('Fitness');

-- ==========================================
-- USERS
-- ==========================================

INSERT INTO Users
(Username, Email, Password, Bio, AccountTypeID)
VALUES
('andriel', 'andriel@gmail.com', '123456', 'Programmer', 2),
('jony', 'jony@gmail.com', '123456', 'Gamer', 1),
('maria', 'maria@gmail.com', '123456', 'Photographer', 3),
('alex', 'alex@gmail.com', '123456', 'Tech Enthusiast', 2),
('sophia', 'sophia@gmail.com', '123456', 'Travel Blogger', 3);

-- ==========================================
-- POSTS
-- ==========================================

INSERT INTO Posts
(UserID, CategoryID, Caption)
VALUES
(1, 2, 'My first post'),
(1, 2, 'Learning SQL'),
(2, 1, 'Playing Cyberpunk'),
(3, 3, 'Photo of the day'),
(4, 2, 'Building a new PC'),
(5, 4, 'Trip to New York'),
(5, 4, 'Beautiful sunset');

-- ==========================================
-- LIKES
-- ==========================================

INSERT INTO Likes
(UserID, PostID)
VALUES
(2, 1),
(3, 1),
(1, 2),
(1, 3),
(4, 1),
(5, 1),
(2, 5),
(3, 5),
(1, 6),
(4, 6),
(2, 7);

-- ==========================================
-- COMMENTS
-- ==========================================

INSERT INTO Comments
(UserID, PostID, CommentText)
VALUES
(2, 1, 'Nice post'),
(3, 1, 'I like it'),
(1, 3, 'Cyberpunk is awesome'),
(2, 4, 'Excellent photo'),
(5, 5, 'Great setup'),
(4, 6, 'Amazing trip'),
(1, 6, 'Looks fantastic'),
(3, 7, 'Beautiful view');

-- ==========================================
-- FOLLOWS
-- ==========================================

INSERT INTO Follows
(FollowerID, FollowingID)
VALUES
(2, 1),
(3, 1),
(1, 2),
(1, 3),
(4, 1),
(5, 1),
(2, 5),
(3, 5),
(4, 5);
