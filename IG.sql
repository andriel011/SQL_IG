CREATE DATABASE IF NOT EXISTS InstagramDB;

USE InstagramDB;


CREATE TABLE Account_Types (
    AccountTypeID INT AUTO_INCREMENT PRIMARY KEY,
    TypeName VARCHAR(50) NOT NULL
);


CREATE TABLE Categories (
    CategoryID INT AUTO_INCREMENT PRIMARY KEY,
    CategoryName VARCHAR(50) NOT NULL
);


CREATE TABLE Users (
    UserID INT AUTO_INCREMENT PRIMARY KEY,
    Username VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    Password VARCHAR(255) NOT NULL,
    Bio TEXT,
    AccountTypeID INT,
    FOREIGN KEY (AccountTypeID)
        REFERENCES Account_Types(AccountTypeID)
);


CREATE TABLE Posts (
    PostID INT AUTO_INCREMENT PRIMARY KEY,
    UserID INT NOT NULL,
    CategoryID INT,
    Caption TEXT,
    CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (UserID)
        REFERENCES Users(UserID),

    FOREIGN KEY (CategoryID)
        REFERENCES Categories(CategoryID)
);


CREATE TABLE Likes (
    LikeID INT AUTO_INCREMENT PRIMARY KEY,
    UserID INT NOT NULL,
    PostID INT NOT NULL,
    CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (UserID)
        REFERENCES Users(UserID),

    FOREIGN KEY (PostID)
        REFERENCES Posts(PostID)
);

CREATE TABLE Comments (
    CommentID INT AUTO_INCREMENT PRIMARY KEY,
    UserID INT NOT NULL,
    PostID INT NOT NULL,
    CommentText TEXT NOT NULL,
    CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (UserID)
        REFERENCES Users(UserID),

    FOREIGN KEY (PostID)
        REFERENCES Posts(PostID)
);


CREATE TABLE Follows (
    FollowerID INT NOT NULL,
    FollowingID INT NOT NULL,
    FollowDate DATETIME DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (FollowerID, FollowingID),

    FOREIGN KEY (FollowerID)
        REFERENCES Users(UserID),

    FOREIGN KEY (FollowingID)
        REFERENCES Users(UserID)
);


CREATE INDEX idx_post_user
ON Posts(UserID);

CREATE INDEX idx_like_post
ON Likes(PostID);
