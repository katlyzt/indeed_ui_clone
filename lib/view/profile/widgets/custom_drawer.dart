import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(height: 70),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.close),
              ),
              SizedBox(width: 10),
            ],
          ),
          ListTile(
            title: Text("My reviews"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () => Navigator.pop(context),
          ),
          Divider(),
          ListTile(
            title: Text("Settings"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () => Navigator.pop(context),
          ),
          Divider(),
          ListTile(
            title: Text("Country and language"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () => Navigator.pop(context),
          ),
          Divider(),
          ListTile(
            title: Text("Help"),
            onTap: () => Navigator.pop(context),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(),
          ListTile(
            title: Text("Terms"),
            onTap: () => Navigator.pop(context),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(),
          ListTile(
            title: Text("Accessibility at Indeed"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () => Navigator.pop(context),
          ),
          Divider(),
        ],
      ),
    );
  }
}
