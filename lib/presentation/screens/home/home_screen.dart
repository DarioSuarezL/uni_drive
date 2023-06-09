import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uni_drive/config/menu/menu_items.dart';

class HomeScreen extends StatelessWidget {

  static const String routeName = 'home_screen';

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
      trailing: const Icon(Icons.arrow_forward_ios),
      title: Text(menuItem.title, style: const TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(menuItem.subtitle),
      onTap: (){
        // context.push(menuItem.link);
        context.pushNamed(menuItem.routeName);
      }
    );
  }
}