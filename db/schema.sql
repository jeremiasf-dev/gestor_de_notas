-- Tabla de categorías de textos
CREATE TABLE text_categoria (
    id SERIAL PRIMARY KEY,
    nombre TEXT NOT NULL
);

-- Tabla de textos
CREATE TABLE text_texto (
    id SERIAL PRIMARY KEY,
    titulo TEXT DEFAULT '',
    contenido TEXT NOT NULL,
    activo BOOLEAN NOT NULL DEFAULT TRUE,
    categoria_id INTEGER,
    CONSTRAINT fk_text_categoria
        FOREIGN KEY (categoria_id)
        REFERENCES text_categoria(id)
);
