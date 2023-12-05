create table if not exists Minio_File (
    id int GENERATED BY DEFAULT AS IDENTITY,
    post_id int,
    uid text,
    name text,
    type text,
    e_tag text,
    bucket text,
    path text,
    minio_url text,
    file_size int
);

create table if not exists Sport_Tag (
    id int GENERATED BY DEFAULT AS IDENTITY,
    user_ids integer[],
    post_ids integer[],
    image_path text,
    name text,
    description text
);

create table if not exists Post (
    id int GENERATED BY DEFAULT AS IDENTITY,
    user_id int,
    sport_tag_ids integer[],
    file_ids integer[],
    image_path text,
    name text,
    annotation text,
    content text,
    placed_at date
);

create table if not exists App_User (
    id int GENERATED BY DEFAULT AS IDENTITY,
    sport_tag_ids integer[],
    post_ids integer[],
    roles text[],
    mail text unique not null,
    password text not null,
    first_name text,
    middle_name text,
    last_name text,
    birthday date,
    placed_at date,
    phone text
);