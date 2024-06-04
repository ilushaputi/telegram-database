--liquibase formatted sql

--changeSet iputintsev:pressure-measurement-01 logicalFilePath:db/changelog/initscripts
CREATE TABLE IF NOT EXISTS telegram_schema.pressure_measurement(
                                                              measurement_d BIGINT,
                                                              person_id BIGINT,
                                                              up_pressure SMALLINT,
                                                              down_pressure SMALLINT,
                                                              creation_date TIMESTAMP,
                                                              last_update_date TIMESTAMP
);
CREATE SEQUENCE telegram_schema.pressure_measurement_s;

COMMENT ON TABLE telegram_schema.pressure_measurement IS 'Таблица нормальных значений давления для пользователя';
COMMENT ON COLUMN telegram_schema.pressure_measurement.up_pressure IS 'ID пользователя';
COMMENT ON COLUMN telegram_schema.pressure_measurement.measurement_d IS 'ID записи';
COMMENT ON COLUMN telegram_schema.pressure_measurement.up_pressure IS 'Верхнее артериальное давление';
COMMENT ON COLUMN telegram_schema.pressure_measurement.down_pressure IS 'Нижнее артериальное давление';