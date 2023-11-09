Create Table Presidente (
  'Id_presidente' int [pk]
  'Nome' varchar (60) 
  'Nascimento' year
  'Sexo' enum ('M', 'F')
  'Nacionalidade' varchar(30)
);

Create Table Funcionario (
  'Id_funcionario' int [pk]
  'Nome' varchar (60)
  'Nascimento' year
  'Sexo' enum ('M', 'F')
  'Nacionalidade' varchar(30)
);
Create Table Eventos (
 'P_organizador' int
  'F_participantes' int
  'Id_grupo' int
  'Data' Date
  'Turno' varchar (10)
);

Create Table Grupo (
 'Id_grupo' int [pk]
 'Np' int
 'Data_fundacao' year
 'Regiao' varchar (30)
);


Ref: "Presidente"."Id_presidente" < "Eventos"."P_organizador"

Ref: "Funcionario"."Id_funcionario" < "Eventos"."F_participantes"

Ref: "Grupo"."Id_grupo" < "Eventos"."Id_grupo"