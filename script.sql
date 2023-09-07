CREATE DATABASE SpotiApp;


CREATE TABLE Artista (
    ID_Artista INT NOT NULL AUTO_INCREMENT,
    Nombre VARCHAR(50) NOT NULL,
    Nacionalidad VARCHAR(50) NOT NULL,
    Anio_Inicio INT NOT NULL,
    PRIMARY KEY (ID_Artista)
);

CREATE TABLE Cancion (
    ID_Cancion INT NOT NULL AUTO_INCREMENT,
    ID_Artista INT NOT NULL,
    Titulo VARCHAR(100) NOT NULL,
    Album VARCHAR(100),
    Fecha_Lanzamiento DATE NOT NULL,
    Genero VARCHAR(50) NOT NULL,
    Ubicacion VARCHAR(100) NOT NULL,
    PRIMARY KEY (ID_Cancion),
    FOREIGN KEY (ID_Artista) REFERENCES Artista (ID_Artista)
);

CREATE TABLE Usuario (
    ID_Usuario INT NOT NULL AUTO_INCREMENT,
    Nombre VARCHAR(50) NOT NULL,
    Username VARCHAR(50) NOT NULL,
    PasswordHash VARCHAR(255) NOT NULL,
    TipoUsuario VARCHAR(50) NOT NULL,
    PRIMARY KEY (ID_Usuario)
);

CREATE TABLE Playlist (
    ID_Playlist INT NOT NULL AUTO_INCREMENT,
    ID_Usuario INT NOT NULL,
    NombrePlaylist VARCHAR(100) NOT NULL,
    FechaCreacion DATE NOT NULL,
    PRIMARY KEY (ID_Playlist),
    FOREIGN KEY (ID_Usuario) REFERENCES Usuario (ID_Usuario)
);

CREATE TABLE DetallePlaylist (
    ID_DetallePlaylist INT NOT NULL AUTO_INCREMENT,
    ID_Playlist INT NOT NULL,
    ID_Cancion INT NOT NULL,
    PRIMARY KEY (ID_DetallePlaylist),
    FOREIGN KEY (ID_Playlist) REFERENCES Playlist (ID_Playlist),
    FOREIGN KEY (ID_Cancion) REFERENCES Cancion (ID_Cancion)
);
