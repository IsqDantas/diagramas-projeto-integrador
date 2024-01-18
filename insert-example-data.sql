USE saperedb;

INSERT INTO user (first_name, last_name, email, password, role)
VALUES ('Isaque', 'Dantas', 'vicisaque413@gmail.com', 'isq123456', 'student');
INSERT INTO student (lesson_institute, user_id)
VALUES ('IFRN Campus Natal - Zona-Norte', (SELECT MAX(id) FROM user));

INSERT INTO user (first_name, last_name, email, password, role)
VALUES ('Kátia', 'Dantas', 'katia_dantas@gmail.com', 'katia_ela_!@', 'tutor');
INSERT INTO tutor (instagram_account, discord_account, telegram_account, user_id)
VALUES ('katia', 'katt_dantas', 'katt_dantas', (SELECT MAX(id) FROM user));

INSERT INTO user (first_name, last_name, email, password, role)
VALUES ('Augusto', 'Lucas', 'aug_lucas_BR123@outlook.com', 'minecraftBlocks', 'student');
INSERT INTO student (lesson_institute, user_id)
VALUES ('CEEP - Ruy Pereira', (SELECT MAX(id) FROM user));

INSERT INTO user (first_name, last_name, email, password, role)
VALUES ('Sérgio', 'Pereira', 's_pereira@yahoo.com.br', '14.23.1998', 'student');
INSERT INTO student (lesson_institute, user_id)
VALUES ('UFRN', (SELECT MAX(id) FROM user));

INSERT INTO user (first_name, last_name, email, password, role)
VALUES ('Linus', 'Torvalds', 'linux@linux.com', '123', 'tutor');
INSERT INTO tutor (instagram_account, discord_account, telegram_account, user_id)
VALUES ('linus_torvalds', 'linus', 'linus', (SELECT MAX(id) FROM user));




