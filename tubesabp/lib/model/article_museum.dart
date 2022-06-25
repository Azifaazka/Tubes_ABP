class Article{
  String? article;
  String? author;
  String? date;
  String? image;
  String? title;

  Article({this.article, this.author, this.date, this.image, this.title});

  factory Article.fromJson(Map<String, dynamic> json){
    return Article(
      article: json['article'],
      author: json['author'],
      date: json['date'],
      image: json['image'],
      title: json['title']
    );
  }
  Map<String, dynamic> toJson(){
    return {
      'article' : article,
      'author' : author,
      'date' : date,
      'image' : image,
      'title' : title
    };
  }
}