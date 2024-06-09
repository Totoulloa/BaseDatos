ALTER TABLE producto
ADD FOREIGN KEY(categoria_nombre) REFERENCES categorias(Identificador);