use minimas;
INSERT INTO descripcion_minima (uso, destino, serial, subpartida)
SELECT 'Uso automotriz', 'Exportación de tornillos', 'A123456', '8431439000'
WHERE NOT EXISTS (
    SELECT 1 
    FROM descripcion_minima 
    WHERE serial = 'A123456' AND subpartida = '8431439000'
);

INSERT INTO descripcion_minima (uso, destino, serial, subpartida)
SELECT 'Uso industrial', 'Importación de herramientas', 'B123457', '8431439000'
WHERE NOT EXISTS (
    SELECT 1 
    FROM descripcion_minima 
    WHERE serial = 'B123457' AND subpartida = '8431439000'
);

INSERT INTO descripcion_minima (uso, destino, serial, subpartida)
SELECT 'Uso en telecomunicaciones', 'Fabricación de cables', 'C123458', '851720901000'
WHERE NOT EXISTS (
    SELECT 1 
    FROM descripcion_minima 
    WHERE serial = 'C123458' AND subpartida = '851720901000'
);

INSERT INTO descripcion_minima (uso, destino, serial, subpartida)
SELECT 'Uso residencial', 'Distribución de telecomunicaciones', 'D123459', '851720901000'
WHERE NOT EXISTS (
    SELECT 1 
    FROM descripcion_minima 
    WHERE serial = 'D123459' AND subpartida = '851720901000'
);

INSERT INTO descripcion_minima (uso, destino, serial, subpartida)
SELECT 'Uso en computadoras', 'Venta de periféricos', 'E123460', '2932202010'
WHERE NOT EXISTS (
    SELECT 1 
    FROM descripcion_minima 
    WHERE serial = 'E123460' AND subpartida = '2932202010'
);

INSERT INTO descripcion_minima (uso, destino, serial, subpartida)
SELECT 'Uso corporativo', 'Exportación de accesorios', 'F123461', '2932202010'
WHERE NOT EXISTS (
    SELECT 1 
    FROM descripcion_minima 
    WHERE serial = 'F123461' AND subpartida = '2932202010'
);

INSERT INTO descripcion_minima (uso, destino, serial, subpartida)
SELECT 'Uso en iluminación', 'Distribución de teclados', 'G123462', '4016931000'
WHERE NOT EXISTS (
    SELECT 1 
    FROM descripcion_minima 
    WHERE serial = 'G123462' AND subpartida = '4016931000'
);

INSERT INTO descripcion_minima (uso, destino, serial, subpartida)
SELECT 'Uso en oficinas', 'Venta de accesorios retroiluminados', 'H123463', '4016931000'
WHERE NOT EXISTS (
    SELECT 1 
    FROM descripcion_minima 
    WHERE serial = 'H123463' AND subpartida = '4016931000'
);

INSERT INTO descripcion_minima (uso, destino, serial, subpartida)
SELECT 'Uso en procesamiento de datos', 'Venta de hardware', 'I123464', '9010909090'
WHERE NOT EXISTS (
    SELECT 1 
    FROM descripcion_minima 
    WHERE serial = 'I123464' AND subpartida = '9010909090'
);

INSERT INTO descripcion_minima (uso, destino, serial, subpartida)
SELECT 'Uso académico', 'Importación de equipos de cómputo', 'J123465', '9010909090'
WHERE NOT EXISTS (
    SELECT 1 
    FROM descripcion_minima 
    WHERE serial = 'J123465' AND subpartida = '9010909090'
);
