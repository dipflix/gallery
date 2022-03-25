import 'package:flutter/material.dart';
import 'package:gallery_qulisoft/src/common/models/CardImageModel.dart';
import 'package:gallery_qulisoft/src/uikit.dart';
import 'package:gallery_qulisoft/src/uikit/styles/text.dart';
import 'package:go_router/go_router.dart';

class GalleryCard extends StatelessWidget {
  final CardImageModel model;

  const GalleryCard(
    this.model, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: CardComponent(
        color: Colors.black38,
        padding: const EdgeInsets.all(0),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            PhotoHero(photo: model.imageUrls!.small!),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0x00000000), Color(0xff000000)],
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    height: 28,
                    width: 28,
                    child: CircleAvatar(
                      backgroundImage:
                          NetworkImage(model.author!.profile_image!.large!),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${model.author!.name}",
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextTheme.smallText.medium
                              .merge(const TextStyle(color: Colors.white)),
                        ),
                        Text(
                          "${model.author!.username}",
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextTheme.caption.regular
                              .merge(const TextStyle(color: Colors.white)),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      onTap: (){
        context.push("/imageFullView",
            extra: model);

      },
    );
  }
}
