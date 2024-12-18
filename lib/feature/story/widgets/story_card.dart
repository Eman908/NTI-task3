import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  const StoryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 200,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16)),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
              'https://img.freepik.com/free-psd/double-exposure-shapes-photo-effect_23-2150334565.jpg?t=st=1734514667~exp=1734518267~hmac=408d89cf54128605d44349a0047c2f4082af69ef7c9121c8c1564d98c3824d1b&w=740'),
          //
        ),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(
                'https://img.freepik.com/free-vector/isolated-young-handsome-man-different-poses-white-background-illustration_632498-870.jpg?t=st=1734437989~exp=1734441589~hmac=f84097b4a9d1dfca41280981a99a8bf1ba5b2c0c105511ccc193fd6d6090b65e&w=740'),
          ),
          Spacer(
            flex: 1,
          ),
          Text(
            'Eman Tharwat',
            style: TextStyle(
                backgroundColor: Colors.green,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
