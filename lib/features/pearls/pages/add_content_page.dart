import '../../../main.dart';

class AddPearlPage extends StatelessWidget {
  static final pearlRM = RM.inject(Pearl.new);
  static Pearl get pearl => pearlRM.state;
  static void setPearl(Pearl _) => pearlRM.state = _;

  const AddPearlPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Pearl'.text(),
      ),
      body: ListView(
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Statement',
            ),
            onChanged: (statement) {
              setPearl(pearl.copyWith(statement: statement));
            },
            maxLines: 6,
            minLines: 2,
          ).pad(),
          TextField(
            decoration: InputDecoration(
              labelText: 'Answer',
            ),
            onChanged: (answer) {
              setPearl(pearl.copyWith(answer: answer));
            },
            maxLines: 6,
            minLines: 3,
          ).pad(),
          TextField(
            decoration: InputDecoration(
              labelText: 'Explaination',
            ),
            onChanged: (explanation) {
              setPearl(pearl.copyWith(explanation: explanation));
            },
            maxLines: 6,
            minLines: 2,
          ).pad(),
          ElevatedButton(
            onPressed: () {
              pearlsRM.addPearl(pearl.copyWith(id: randomID));
              setPearl(Pearl());
            },
            child: 'Save Pearl'.text(),
          ).pad(),
          pearl.text().pad(),
        ],
      ),
    );
  }
}
