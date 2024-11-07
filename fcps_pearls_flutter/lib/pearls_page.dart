import 'package:fcps_pearls_client/fcps_pearls_client.dart';

import 'context.dart';
import 'package:flutter/material.dart';

import 'pearls_bloc.dart';

class PearlsPage extends StatelessWidget {
  const PearlsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pearls Page'),
      ),
      body: context.of<PearlsBloc>().state.loading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView(
              children: context.of<PearlsBloc>().state.pearls.map(
                (pearl) {
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    child: ListTile(
                      contentPadding: EdgeInsets.all(8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      tileColor: Colors.amber,
                      title: Text(pearl.statement),
                      onTap: () => context
                          .of<PearlsBloc>()
                          .add(RemovePearlsEvent(pearl)),
                    ),
                  );
                },
              ).toList(),
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.of<PearlsBloc>().add(
                AddPearlsEvent(
                  Pearl(
                    id: UuidValue.fromString(randomId),
                    created_at: DateTime.now(),
                  ),
                ),
              );
        },
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}
