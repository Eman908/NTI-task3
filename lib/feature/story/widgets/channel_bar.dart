import 'package:flutter/material.dart';
import 'package:task3/feature/home/widget/text_style.dart';
import 'package:task3/feature/story/models/channel_model.dart';

class ChannelBar extends StatelessWidget {
  const ChannelBar({
    required this.c,
    super.key,
  });
  final ChannelModel c;
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
        c.name,
        style: style(fWeight: FontWeight.bold),
      ),
      subtitle: Row(
        children: [
          const Icon(
            Icons.image,
            size: 14,
            color: Colors.grey,
          ),
          Text(
            c.message,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: style(fWeight: FontWeight.w500),
          ),
        ],
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            c.date,
            style: const TextStyle(fontSize: 14, color: Colors.white),
          ),
          Container(
            width: 20,
            decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.all(Radius.circular(16)),
            ),
            child: Center(
              child: Text(
                c.no,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
