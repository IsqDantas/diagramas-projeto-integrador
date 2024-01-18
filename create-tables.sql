USE saperedb;

CREATE table user
(
    id         int auto_increment primary key not null,
    first_name varchar(30)                    not null,
    last_name  varchar(30)                    not null,
    email      varchar(80)                    not null,
    password   varchar(50)                    not null,
    role       enum ('student', 'tutor')      not null
);

CREATE table student
(
    id               int auto_increment primary key not null,
    lesson_institute varchar(80),
    user_id          int unique                     not null,
    foreign key (user_id) references user (id)
);

CREATE table tutor
(
    id                int auto_increment primary key not null,
    instagram_account varchar(50),
    discord_account   varchar(50),
    telegram_account  varchar(50),
    user_id           int unique                     not null,
    foreign key (user_id) references user (id)
);

CREATE table subject (
    id int auto_increment primary key not null,
    name varchar(60)
);

CREATE table student_pays_subject (
    student_id int not null,
    subject_id int not null,
    foreign key (student_id) references student (id),
    foreign key (subject_id) references subject (id)
);
