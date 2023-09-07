-- Insertar artistas ficticios
INSERT INTO Artista (Nombre, Nacionalidad, Anio_Inicio)
VALUES
    ('Artista 1', 'Nacionalidad 1', 1990),
    ('Artista 2', 'Nacionalidad 2', 2000),
    ('Artista 3', 'Nacionalidad 3', 1985);

-- Insertar canciones ficticias asociadas a artistas existentes
INSERT INTO Cancion (ID_Artista, Titulo, Album, Fecha_Lanzamiento, Genero, Ubicacion)
VALUES
    (1, 'Cancion 1', 'Album 1', '2022-01-01', 'Rock', 'Ubicacion 1'),
    (2, 'Cancion 2', 'Album 2', '2021-03-15', 'Pop', 'Ubicacion 2'),
    (3, 'Cancion 3', 'Album 3', '2020-05-20', 'Hip-Hop', 'Ubicacion 3');

-- Insertar usuarios ficticios (clientes)
INSERT INTO Usuario (Nombre, Username, PasswordHash, TipoUsuario)
VALUES
    ('Cliente 1', 'cliente1', 'hash_cliente1', 'Cliente'),
    ('Cliente 2', 'cliente2', 'hash_cliente2', 'Cliente'),
    ('Cliente 3', 'cliente3', 'hash_cliente3', 'Cliente');

-- Insertar playlist ficticias asociadas a usuarios
INSERT INTO Playlist (ID_Usuario, NombrePlaylist, FechaCreacion)
VALUES
    (1, 'Playlist 1', '2022-02-10'),
    (2, 'Playlist 2', '2022-03-20'),
    (3, 'Playlist 3', '2022-04-30');

-- Insertar detalles de playlist ficticios (canciones en playlist)
INSERT INTO DetallePlaylist (ID_Playlist, ID_Cancion)
VALUES
    (1, 1),
    (1, 2),
    (2, 2),
    (3, 3);
