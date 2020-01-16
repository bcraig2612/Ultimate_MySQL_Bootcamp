-- Create database:
CREATE DATABASE instagram_database_clone;

-- Use database:
USE instagram_database_clone;

-- Create Users Table:
CREATE TABLE users
(
    id INTEGER
    AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR
    (255) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT NOW
    ()
);

    -- Create Photos Table:
    CREATE TABLE photos
    (
        id INTEGER
        AUTO_INCREMENT PRIMARY KEY,
    image_url VARCHAR
        (255) NOT NULL,
    user_id INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT NOW
        (),
    FOREIGN KEY
        (user_id) REFERENCES users
        (id)
);

        -- Create Comments Table:
        CREATE TABLE comments
        (
            id INTEGER
            AUTO_INCREMENT PRIMARY KEY,
    comment_text VARCHAR
            (255) NOT NULL,
    photo_id INTEGER NOT NULL,
    user_id INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT NOW
            (),
    FOREIGN KEY
            (photo_id) REFERENCES photos
            (id),
    FOREIGN KEY
            (user_id) REFERENCES users
            (id)
);

            -- Create Likes Table:
            CREATE TABLE likes
            (
                user_id INTEGER NOT NULL,
                photo_id INTEGER NOT NULL,
                created_at TIMESTAMP DEFAULT NOW(),
                FOREIGN KEY(user_id) REFERENCES users(id),
                FOREIGN KEY(photo_id) REFERENCES photos(id),
                -- THIS PREVENTS A USER FROM LIKING A PHOTO MORE THAN 1 TIME.
                PRIMARY KEY(user_id, photo_id)
            );

            -- Create Followers Table:
            CREATE TABLE follows
            (
                follower_id INTEGER NOT NULL,
                followee_id INTEGER NOT NULL,
                created_at TIMESTAMP DEFAULT NOW(),
                FOREIGN KEY(follower_id) REFERENCES users(id),
                FOREIGN KEY(followee_id) REFERENCES users(id),
                -- THIS PREVENTS A USER FROM FOLLOWING A USER MORE THAN 1 TIME.
                PRIMARY KEY(follower_id, followee_id)
            );

            -- Creating Hashtags Tables(tags & photo_tags):
            CREATE TABLE tags
            (
                id INTEGER
                AUTO_INCREMENT PRIMARY KEY,
    tag_name VARCHAR
                (255) UNIQUE,
    created_at TIMESTAMP DEFAULT NOW
                ()
);

                CREATE TABLE photo_tags
                (
                    photo_id INTEGER NOT NULL,
                    tag_id INTEGER NOT NULL,
                    FOREIGN KEY(photo_id) REFERENCES photos(id),
                    FOREIGN KEY(tag_id) REFERENCES tags(id),
                    -- Prevents users from creating duplicate hashtags
                    PRIMARY KEY(photo_id, tag_id)
                );