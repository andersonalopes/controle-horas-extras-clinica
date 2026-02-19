-- Total de horas extras por setor
SELECT f.setor, SUM(h.horas_extras) AS total_horas
FROM horas_extras h
JOIN funcionarios f ON h.id_funcionario = f.id_funcionario
GROUP BY f.setor;

-- Custo total por cargo
SELECT f.cargo,
       SUM(h.horas_extras * f.valor_hora) AS custo_total
FROM horas_extras h
JOIN funcionarios f ON h.id_funcionario = f.id_funcionario
GROUP BY f.cargo;

-- Funcionários com mais horas extras
SELECT f.nome, SUM(h.horas_extras) AS horas
FROM horas_extras h
JOIN funcionarios f ON h.id_funcionario = f.id_funcionario
GROUP BY f.nome
ORDER BY horas DESC;

-- Horas extras por motivo
SELECT motivo, SUM(horas_extras) AS total
FROM horas_extras
GROUP BY motivo;

