import 'package:flutter/material.dart';

class RecipeImage extends StatelessWidget {
  const RecipeImage({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    // When run as a web app there are issues with CORS policy that denies the http
    // request. One solution is a CORS proxy (I setup one on cloudflare). This can be
    // used by using 'https://cors-proxy.logmeinmail.workers.dev/?url=${imageUrl}' as
    // the url. Another option is to pass the
    // webHtmlElementStrategy: WebHtmlElementStrategy.fallback argument.
    return Image.network(
      imageUrl,
      loadingBuilder: (context, child, downloadProgress) {
        // Means that loading image has finished
        if (downloadProgress == null) {
          return child;
        }

        double? progress;
        if (downloadProgress.expectedTotalBytes != null) {
          progress = (downloadProgress.cumulativeBytesLoaded /
              downloadProgress.expectedTotalBytes!);
        }
        return CircularProgressIndicator(
          value: progress,
        );
      },
      errorBuilder: (context, url, error) {
        return SizedBox(
          width: 35,
          child: Icon(
            Icons.warning,
            size: 35,
            color: Theme.of(context).colorScheme.primary,
          ),
        );
      },
      webHtmlElementStrategy: WebHtmlElementStrategy.fallback,
    );
  }
}
