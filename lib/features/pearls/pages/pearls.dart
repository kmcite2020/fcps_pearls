import 'package:fcps_pearls/main.dart';

import 'pearl_details.dart';

class PearlsPage extends UI {
  const PearlsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pearls'),
      ),
      body: ListView(
        children: [
          ListView.builder(
            itemBuilder: (context, index) {
              final pearls = context.watch<PearlsBloc>().state;
              final pearl = pearls.pearlsCache.values.toList()[index];
              return ListTile(
                leading: CircleAvatar(child: (index + 1).text()),
                title: pearl.statement.text(),
                trailing: IconButton.filled(
                  onPressed: () {
                    navigator.to(
                      PearlDetailsPage(id: pearl.id),
                    );
                  },
                  icon: Icon(Icons.diamond_outlined),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
