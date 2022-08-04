class Post {
  final String photoUrl;
  final String title;
  final double rating;
  final String description;
  final DateTime publishDate;
  final int makingTime;
  final int ingredients;
  final String userId;
  final String username;
  final String userPhotoUrl;

  Post({
    required this.title,
    required this.rating,
    required this.description,
    required this.publishDate,
    required this.makingTime,
    required this.ingredients,
    required this.userId,
    required this.username,
    required this.userPhotoUrl,
    required this.photoUrl,
  });
}
