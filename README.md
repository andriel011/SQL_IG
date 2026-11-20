# InstagramDB - Social Media Database Simulation

## Project Description

InstagramDB is a relational database project developed using MySQL that simulates the core functionality of a social media platform similar to Instagram.

The database allows users to:

- Create accounts
- Publish posts
- Like posts
- Comment on posts
- Follow other users
- Categorize content
- Generate reports through SQL queries

---

## Database Features

### Tables

1. Account_Types
2. Categories
3. Users
4. Posts
5. Likes
6. Comments
7. Follows

### Views

1. vw_MainFeed
   - Displays posts with author information, likes, and comments.

2. vw_UserFollowers
   - Shows the total number of followers for each user.

3. vw_UserActivity
   - Displays user activity statistics including posts, likes received, and followers.

### Stored Procedures

1. GetPostsByUser
   - Returns all posts created by a specific user.

### Triggers

1. trg_NoSelfFollow
   - Prevents users from following themselves.

### Indexes

1. idx_post_user
2. idx_like_post

---

## Project Structure

### IG.sql
Contains the database schema and table creation scripts.

### seed.sql
Contains sample data used to test and populate the database.

### view.sql
Contains all database views used for reporting and data visualization.

### procedures.sql
Contains stored procedures used to automate common queries.

### triggers.sql
Contains triggers used to enforce business rules.

### Query.sql
Contains analytical and reporting queries.

---

## Sample Reports

The project includes analytical queries such as:

- Total posts per user.
- Followers count.
- User comment activity.
- Most liked posts.
- Posts by category.
- Users and account types.
- Post author information.
- Follower-following relationships.
- Average likes per post.
- Top active users.

---

## Technologies Used

- MySQL
- SQL
- Relational Database Design

---

## Learning Objectives

This project demonstrates:

- Database Normalization
- Primary Keys and Foreign Keys
- One-to-Many Relationships
- Many-to-Many Relationships
- SQL Views
- Stored Procedures
- Triggers
- Aggregate Functions
- SQL Joins
- Query Optimization Using Indexes

---

## Project Team

- Andriel
- Monce
- Ashica
- Rinzin
- Shree
