import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CommonCacheImage extends StatelessWidget {
  const CommonCacheImage(
      {Key? key,
      required this.imageUrl,
      required this.placeholder,
      this.borderRadius = 0,
      this.height,
      this.width})
      : super(key: key);
  final String? imageUrl;
  final String? placeholder;
  final double? borderRadius;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return 
    ClipRRect(borderRadius: BorderRadius.circular(borderRadius??0),
      child: CachedNetworkImage(
        height: height,
        width: width,
        imageUrl: imageUrl!,
        imageBuilder: (context, imageProvider) => Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: imageProvider,
                fit: BoxFit.cover,
              
                ),
          ),
        ),
        
        placeholder: (context, url) => 
        const
        Center(
          child:  SizedBox(
            height: 40,
            width: 40,
            child:
             CircularProgressIndicator(strokeWidth: 1.5,),
          ),
        ),
        // placeholder: (context, url) => Image.asset(placeholder!, ),
        errorWidget: (context, url, error) =>  Image.asset(placeholder!, )//Icon(Icons.error),
      ),
    );
  }
}
