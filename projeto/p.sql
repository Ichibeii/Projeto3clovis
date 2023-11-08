CREATE TABLE "Presidente" (
  "Id_presidente" int PRIMARY KEY,
  "Nome" varchar(60),
  "Nascimento" year,
  "Sexo" enum,
  "Nacionalidade" varchar(30)
);

CREATE TABLE "Funcionario" (
  "Id_funcionario" int PRIMARY KEY,
  "Nome" varchar(60),
  "Nascimento" year,
  "Sexo" enum,
  "Nacionalidade" varchar(30)
);

CREATE TABLE "Eventos" (
  "P_organizador" int,
  "F_participantes" int,
  "Data" Date,
  "Turno" varchar(10)
);

ALTER TABLE "Eventos" ADD FOREIGN KEY ("P_organizador") REFERENCES "Presidente" ("Id_presidente");

ALTER TABLE "Eventos" ADD FOREIGN KEY ("F_participantes") REFERENCES "Funcionario" ("Id_funcionario");
