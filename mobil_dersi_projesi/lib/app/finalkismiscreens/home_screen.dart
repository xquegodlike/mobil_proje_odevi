import 'package:flutter/material.dart';
import 'package:mobil_dersi_projesi/app/screens/about_screen.dart';
import 'package:mobil_dersi_projesi/core/userviewmodel/user_view_model.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Anasayfa"),
        actions: [
          ElevatedButton(
            onPressed: () => _cikisYap(context),
            child: Text("Çıkış Yap"),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                child: Text(
                  "M",
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
            ),
            ListTile(
              title: Text("Hakkımızda"),
              leading: Icon(Icons.bookmarks),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => AboutScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text("Hoşgeldiniz"),
      ),
    );
  }

  Future<bool> _cikisYap(BuildContext context) async {
    final _userViewModel = Provider.of<UserViewModel>(context,listen: false);
    bool sonuc = await _userViewModel.signOut();
    return sonuc;
  }

}
