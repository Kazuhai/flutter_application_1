import 'package:material_ui/material_ui.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({required this.imageUrl, this.radius = 22, super.key});

  final String imageUrl;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: Colors.grey.shade300,
      child: ClipOval(
        child: Image.network(
          imageUrl,
          width: radius * 2,
          height: radius * 2,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) => Icon(
            Icons.person,
            size: radius * 1.4,
            color: Colors.grey.shade700,
          ),
        ),
      ),
    );
  }
}
