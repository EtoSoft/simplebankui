import 'package:flutter/material.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
        child: ListTile(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
          tileColor: Colors.white,
          title: Text("Ertuğrul Dağlı", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
          subtitle: Text("Burgan Bank", style: TextStyle(fontSize: 13)),
          trailing: Text("TRY 144.23", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
          leading: CircleAvatar(
            child: FlutterLogo(),
          ),
        ),
      ),
    );
  }
}
