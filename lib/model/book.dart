part of model;

class Book {
  Book(this.title, this.publishedDate, this.imageUrl, this.links);
  String? title = '';
  DateTime? publishedDate;
  String? imageUrl = '';
  List<String?> links = [];
}
