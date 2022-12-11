import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:telecom_worker_manager_flutter/module/admin_module/components/admin_side_navigation_drawer.dart';

class AdminParameterPage extends StatefulWidget {
  const AdminParameterPage({super.key});

  @override
  State<AdminParameterPage> createState() => _AdminParameterPageState();
}

class _AdminParameterPageState extends State<AdminParameterPage> {
  final _items = [];
  final GlobalKey<AnimatedListState> _key = GlobalKey();

  void _addItem() {
    _items.insert(0, "Item ${_items.length + 1}");
    _key.currentState!.insertItem(0, duration: const Duration(seconds: 1));
  }

  void _removeItem(int index) {
    _key.currentState!.removeItem(
        index,
        (_, animation) => SizeTransition(
              sizeFactor: animation,
              child: const Card(
                margin: EdgeInsets.all(10),
                color: Colors.red,
              ),
            ));
  }

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text(
                "System Parameters",
                style: GoogleFonts.titilliumWeb(textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.normal)),
              ),
            ),
          ),
          body: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              IconButton(onPressed: _addItem, icon: const Icon(Icons.add)),
              Expanded(
                  child: AnimatedList(
                key: _key,
                initialItemCount: 0,
                padding: const EdgeInsets.all(10),
                itemBuilder: ((context, index, animation) => SizeTransition(
                      key: UniqueKey(),
                      sizeFactor: animation,
                      child: Card(
                        margin: const EdgeInsets.all(10),
                        color: Colors.orangeAccent,
                        child: ListTile(
                          title: Text(
                            _items[index],
                            style: const TextStyle(fontSize: 24),
                          ),
                          trailing: IconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: (() => _removeItem(index)),
                          ),
                        ),
                      ),
                    )),
              ))
            ],
          ),
          drawer: const AdminSideNavigationDrawer(),
        ),
      );
}
