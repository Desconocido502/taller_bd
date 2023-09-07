--*Cantidad de canciones que posee cada artista
SELECT
    A.Nombre AS Artista,
    COUNT(C.ID_Cancion) AS CantidadDeCanciones
FROM
    Artista A
LEFT JOIN
    Cancion C ON A.ID_Artista = C.ID_Artista
GROUP BY
    A.Nombre;


--*Número de veces que se han agregado canciones a una playlist

SELECT
    C.Titulo AS Cancion,
    COUNT(DP.ID_CANCION) AS VecesAgregada
FROM
    Cancion C
LEFT JOIN
    DetallePlaylist DP ON C.ID_CANCION = DP.ID_CANCION
GROUP BY
    C.Titulo;


--*Número de playlists que los usuarios han creado (para un usuario específico)

SELECT
    U.Nombre AS Usuario,
    COUNT(P.ID_PLAYLIST) AS NumeroDePlaylists
FROM
    Usuario U
LEFT JOIN
    Playlist P ON U.ID_USUARIO = P.ID_USUARIO
WHERE
    U.ID_USUARIO = 1;


--*Número total de usuarios creados en el programa
SELECT
    COUNT(*) AS TotalDeUsuarios
FROM
    Usuario;


--* https://www.w3schools.com/sql/sql_join_left.asp para consultar sobre LEFT JOIN

--* https://www.w3schools.com/sql/default.asp para consultar sobre SQL en general
