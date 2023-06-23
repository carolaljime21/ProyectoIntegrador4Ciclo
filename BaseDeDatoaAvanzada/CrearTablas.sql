CREATE TABLE enemdu.Vivienda (
    idVivienda BIGINT PRIMARY KEY,
    area INTEGER,
    ciudad INTEGER,
    conglomerado INTEGER,
    panelm INTEGER,
    vivienda INTEGER,
    viaAccesoPrincipal INTEGER,
    tipoVivienda INTEGER,
    materialVivienda INTEGER,
    estadoMaterial INTEGER,
    materialSuelo INTEGER,
    estadoSuelo INTEGER,
    materialParedes INTEGER,
    estadoParedes INTEGER,
    numCuartos INTEGER,
    cuartosDormitorio INTEGER,
    cuartoNegocio INTEGER,
    cuartoCocina INTEGER,
    estrato INTEGER
);
CREATE TABLE enemdu.Hogar (
    idHogar DOUBLE PRIMARY KEY,
    idVivienda BIGINT,
    hogar INTEGER,
    vehiculosHogar INTEGER,
    cantidadVehiculos VARCHAR(255),
    motosHogar INTEGER,
    cantidadMotos VARCHAR(255),
    fexp VARCHAR(255),
    ump BIGINT,
    periodo INTEGER,
    mes INTEGER,
    FOREIGN KEY (idVivienda) REFERENCES Vivienda(idVivienda)
);
CREATE TABLE enemdu.Combustible (
    idVivienda BIGINT,
    combustibleCocina INTEGER,
    combustibleSuper VARCHAR(255),
    combustibleExtra VARCHAR(255),
    combustibleDiesel VARCHAR(255),
    combustibleEcopais VARCHAR(255),
    combustibleElectricidad VARCHAR(255),
    combustibleGas VARCHAR(255),
    FOREIGN KEY (idVivienda) REFERENCES Vivienda(idVivienda)
);
CREATE TABLE enemdu.Servicios (
    idVivienda BIGINT,
    servicioHigienico INTEGER,
    sinServicioHigienico VARCHAR(255),
    tipoSanitarioCercano VARCHAR(255),
    servicioAgua INTEGER,
    medidorAgua VARCHAR(255),
    juntaAgua VARCHAR(255),
    tipoAgua INTEGER,
    servicioDucha INTEGER,
    tipoAlumbrado INTEGER,
    botaBasura INTEGER,
    arriendoAgua VARCHAR(255),
    arriendoLuz VARCHAR(255),
    FOREIGN KEY (idVivienda) REFERENCES Vivienda(idVivienda)
);
CREATE TABLE enemdu.Gastos (
    idVivienda BIGINT,
    gastoSuper VARCHAR(255),
    gastoExtra VARCHAR(255),
    gastoDiesel VARCHAR(255),
    gastoEcopais VARCHAR(255),
    gastoElectricidad VARCHAR(255),
    gastoGas VARCHAR(255),
    valorArriendo INTEGER,
    FOREIGN KEY (idVivienda) REFERENCES Vivienda(idVivienda)
);
