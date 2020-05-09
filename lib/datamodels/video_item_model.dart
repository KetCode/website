// modelo do video como que vai aparecer (com titulo, com duração e com uma imagemURL)
class VideoItemModel {
  final String title;
  final double duration;
  final String imageUrl;

  VideoItemModel({
    this.title,
    this.duration,
    this.imageUrl,
  });

  VideoItemModel.fromJson(Map<String, dynamic> map)
      : title = map['title'],
        duration = map['duration'],
        imageUrl = map['imageUrl'];
}
