import 'package:flutter/material.dart';
import 'package:task3/feature/home/models/person_model.dart';
import 'package:task3/feature/home/widget/text_style.dart';

class ChatBar extends StatelessWidget {
  const ChatBar({
    required this.p,
    super.key,
  });
  final PersonModel p;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      leading: const SizedBox(
        height: 50,
        width: 50,
        child: CircleAvatar(
          backgroundImage: NetworkImage(
              'https://img.freepik.com/free-vector/isolated-young-handsome-man-different-poses-white-background-illustration_632498-870.jpg?t=st=1734437989~exp=1734441589~hmac=f84097b4a9d1dfca41280981a99a8bf1ba5b2c0c105511ccc193fd6d6090b65e&w=740'),
        ),
      ),
      title: Text(
        p.name,
        style: style(fWeight: FontWeight.bold),
      ),
      subtitle: Text(
        p.message,
        overflow: TextOverflow.fade,
        maxLines: 2,
        style: style(fWeight: FontWeight.w500),
      ),
      trailing: Text(
        p.date,
        style: style(fWeight: FontWeight.w400),
      ),
    );
  }
}
