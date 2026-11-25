import 'package:material_ui/material_ui.dart';

class PostImage extends StatelessWidget {
  const PostImage({required this.imageUrl, this.height = 280, super.key});

  final String imageUrl;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: height,
      child: Image.network(
        imageUrl,
        fit: BoxFit.contain,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) {
            return child;
          }
          return const Center(child: CircularProgressIndicator());
        },
        errorBuilder: (context, error, stackTrace) => ColoredBox(
          color: Colors.grey.shade200,
          child: const Center(
            child: Icon(Icons.image_not_supported_outlined, size: 40),
          ),
        ),
      ),
    );
  }
}
