import 'package:flutter/material.dart';
import 'package:inotech/datamodels/video_item_model.dart';
import 'package:inotech/widgets/videos_list/video_item.dart';

// Aqui eu posso adicionar a imagem de uma url como por exemplo pode ser de um google drive.
class VideoList extends StatelessWidget {
  final contato = [
    VideoItemModel(
      title: 'Setup, Build and Deploy',
      duration: 14.07,
      // imageUrl:
      //     'https://live.staticflickr.com/65535/49834906842_e36ecdd3ca_b.jpg'
    ),
    VideoItemModel(
        title: 'Adding a Responsive UI',
        duration: 18.54,
        // imageUrl:
        //     'https://media.giphy.com/media/3o6ozhxFlr4Ung40RG/giphy.gif'
        ),
    VideoItemModel(
        title: 'Layout Templates',
        duration: 14.55,        
        // imageUrl:
        //     'https://URL.jpg'
        ),
    VideoItemModel(
        title: 'State Management and Api integration', //titulo do video
        duration: 14.55, //duração do video
        // imageUrl: //url do video em jpg
        //     'https://URL.jpg'
            ),
  ];

   @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 30,
      runSpacing: 30,
      children: <Widget>[
        ...contato.map(
          (episode) => VideoItem(model: episode),
        )
      ],
    );
  }
}
