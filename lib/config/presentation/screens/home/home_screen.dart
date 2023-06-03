import 'package:flutter/material.dart';
import 'package:uni_drive/config/menu/menu_items.dart';
import 'package:uni_drive/config/presentation/screens/passenger/passenger_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UniDrive'),
      ),
      body: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (context, index){
        final menuItem = appMenuItems[index];

        return _CustomListTile(menuItem: menuItem);
      },
    );
  }
}

class _CustomListTile extends StatelessWidget {
  const _CustomListTile({
    required this.menuItem,
  });

  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return ListTile(
      leading: Icon(menuItem.icon, color: colors.primary),
      trailing: Icon(Icons.arrow_forward_ios),
      title: Text(menuItem.title, style: const TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(menuItem.subtitle),
      onTap: (){
        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //     builder: (context) => const PassengerScreen()
        //   )
        // );
        Navigator.pushNamed(context, menuItem.link);
      }
    );
  }
}