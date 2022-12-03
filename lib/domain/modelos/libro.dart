class Libro {
  var isbn;
  var nombre;
  var titulo;
  var editorial;
  Libro({this.isbn, this.nombre, this.titulo, this.editorial});
}

List<Libro> listLibros = [
  Libro(
      isbn: '978-0-000-01',
      nombre: 'Cosmos',
      titulo: 'La teoria del cosmos',
      editorial: 'breaknews'),
  Libro(
      isbn: '978-0-000-02',
      nombre: 'Matematicas',
      titulo: 'Introduccion a la aritmetica',
      editorial: 'breaknews'),
  Libro(
      isbn: '978-0-000-03',
      nombre: 'Física',
      titulo: 'Mecanica de fluidos',
      editorial: 'breaknews'),
];
