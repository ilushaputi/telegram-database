--liquibase formatted sql

--changeSet iputintsev:normal-pressure-01 logicalFilePath:db/changelog/initscripts
CREATE TABLE IF NOT EXISTS telegram_schema.normal_pressure(
    normal_pressure_id BIGINT,
    person_id BIGINT,
    normal_up_pressure SMALLINT,
    normal_down_pressure SMALLINT,
    creation_date TIMESTAMP,
    last_update_date TIMESTAMP
);
CREATE SEQUENCE telegram_schema.normal_pressure_s;

COMMENT ON TABLE telegram_schema.normal_pressure IS 'Таблица нормальных значений давления для пользователя';
COMMENT ON COLUMN telegram_schema.normal_pressure.person_id IS 'ID пользователя';
COMMENT ON COLUMN telegram_schema.normal_pressure.normal_pressure_id IS 'ID записи';
COMMENT ON COLUMN telegram_schema.normal_pressure.normal_up_pressure IS 'Нормальное верхнее артериальное давление';
COMMENT ON COLUMN telegram_schema.normal_pressure.normal_down_pressure IS 'Нормальное нижнее артериальное давление';