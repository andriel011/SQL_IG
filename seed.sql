USE InstagramDB;


INSERT INTO Account_Types (TypeName)
VALUES
('Personal'),
('Creator'),
('Business');


INSERT INTO Categories (CategoryName)
VALUES
('Gaming'),
('Technology'),
('Photography');


INSERT INTO Users
(Username, Email, Password, Bio, AccountTypeID)
VALUES
('andriel', 'andriel@gmail.com', '123456', 'Programmer', 2),
('jony', 'jony@gmail.com', '123456', 'Gamer', 1),
('maria', 'maria@gmail.com', '123456', 'Photographer', 3);


INSERT INTO Posts
(UserID, CategoryID, Caption)
VALUES
(1, 2, 'My first post'),
(1, 2, 'Learning SQL'),
(2, 1, 'Playing Cyberpunk'),
(3, 3, 'Photo of the day');


INSERT INTO Likes
(UserID, PostID)
VALUES
(2, 1),
(3, 1),
(1, 2),
(1, 3);

INSERT INTO Comments
(UserID, PostID, CommentText)
VALUES
(2, 1, 'Nice post'),
(3, 1, 'I like it'),
(1, 3, 'Cyberpunk is awesome'),
(2, 4, 'Excellent photo');

INSERT INTO Follows
(FollowerID, FollowingID)
VALUES
(2, 1),
(3, 1),
(1, 2),
(1, 3);
