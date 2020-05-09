import 'package:flutter/widgets.dart';
import 'package:inotech/datamodels/season_details_model.dart';
import 'package:inotech/widgets/season_details/season_details.dart';
import 'package:inotech/widgets/videos_list/videos_list.dart';
//pagina dos videos
class VideosView extends StatelessWidget {
  const VideosView({Key key}) : super(key: key);

   @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        SizedBox(
          height: 100,
        ),
        SeasonDetails(
          details: SeasonDetailsModel(
            title: 'SEASON 1', //titulo do que vai aparecer na pagina
            description:
                'This season covers the absolute basics of Flutter Web Dev to get us up and running with a basic web app.', //texto do que vai aparecer na pagina
          ),
        ),
        SizedBox(
          height: 50,
        ),
        VideoList(),
      ],
    ));
  }
}
