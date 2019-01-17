
-- Table: Estabelecimento
drop table if exists Estabelecimento;
CREATE TABLE Estabelecimento (idEstabelecimento INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL UNIQUE, nmEstabelecimento VARCHAR (255) NOT NULL, nrCodigoOficial VARCHAR (255) NOT NULL, idPais INTEGER NOT NULL, idUf INTEGER NOT NULL, idMunicipio INTEGER NOT NULL, nmLocalidade TEXT NOT NULL, nrLatitude DOUBLE, nrLongitude DOUBLE, stAtivo BOOLEAN NOT NULL, idCliente INTEGER);

-- Table: Produtor
drop table if exists Produtor;
CREATE TABLE Produtor (idProdutor INTEGER PRIMARY KEY AUTOINCREMENT UNIQUE NOT NULL, nrDocumento VARCHAR (255) UNIQUE NOT NULL, nmProdutor VARCHAR (255) NOT NULL, nrTelefone VARCHAR (255), dsEmail VARCHAR (255) UNIQUE NOT NULL, cdEstabelecimento INTEGER REFERENCES Estabelecimento (idEstabelecimento));

-- Table: UnidadeExploracao
drop table if exists UnidadeExploracao;
CREATE TABLE UnidadeExploracao (idUnidadeExploracao INTEGER PRIMARY KEY AUTOINCREMENT UNIQUE NOT NULL, nrUnidadeExploracao INTEGER NOT NULL UNIQUE, qtCapacidadeAlojamento INTEGER NOT NULL, csTipoUnidadeExploracao VARCHAR (255) NOT NULL CONSTRAINT csTipoUnidadeExploracao_Opcoes CHECK (csTipoUnidadeExploracao = "UPL" or csTipoUnidadeExploracao = "Creche" or csTipoUnidadeExploracao = "Terminação"), stAtiva BOOLEAN NOT NULL, csTipoAnimal CHAR (2) NOT NULL CONSTRAINT csTipoAnimal_Opcoes CHECK (csTipoAnimal = "SU" or csTipoAnimal = "AV" or csTipoAnimal = "GD"), cdEstabelecimento INTEGER REFERENCES Estabelecimento (idEstabelecimento));
