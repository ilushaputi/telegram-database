--liquibase formatted sql

--changeSet iputintsev:person-01 logicalFilePath:db/changelog/initscripts
CREATE TABLE IF NOT EXISTS telegram_schema.person(
    person_id BIGINT,
    chat_id BIGINT,
    person_name VARCHAR(250),
    creation_date TIMESTAMP,
    last_update_date TIMESTAMP
);
CREATE SEQUENCE IF NOT EXISTS telegram_schema.person_s;

COMMENT ON TABLE telegram_schema.person IS 'Таблица пользователей';
COMMENT ON COLUMN telegram_schema.person.person_id IS 'ID пользователя';
COMMENT ON COLUMN telegram_schema.person.chat_id IS 'ID телеграм-чата у пользователя';
COMMENT ON COLUMN telegram_schema.person.person_name IS 'Имя пользователя';
