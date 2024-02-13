import '../../../main.dart';

class PearlDetailsPage extends StatelessWidget {
  final String id;
  const PearlDetailsPage({
    super.key,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    final pearl = pearlsRM.getPearl(id);
    // void setPearl(Pearl pearl) => pearlsRM.createPearl(pearl);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            pearlsPageRM(
              pearlsPageRM().copyWith(
                page: PearlPage.pearls,
              ),
            );
          },
          icon: Icon(Icons.dashboard_sharp),
        ).pad(),
        title: pearl.hashCode.text(),
        actions: [
          IconButton(
            onPressed: () {
              pearlsPageRM(
                pearlsPageRM().copyWith(page: PearlPage.editPearl, id: id),
              );
            },
            icon: Icon(Icons.edit),
          ).pad()
        ],
      ),
      body: ListView(
        children: [
          pearl.statement.text(scale: 2).pad(),
          SizedBox(height: 8),
          ElevatedButton.icon(
            onPressed: pearl.answer.isEmpty ? null : answerRM.toggle,
            icon: Icon(
              answerRM() ? Icons.visibility_off : Icons.visibility,
            ),
            label: Row(
              children: [
                answerRM() ? 'Hide Answer'.text() : 'Show Answer'.text(),
              ],
            ),
          ).pad(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          ),
          if (answerRM()) pearl.answer.text(scale: 2).pad(),
          ElevatedButton.icon(
            onPressed: pearl.explanation.isEmpty ? null : explanationRM.toggle,
            icon: Icon(
              explanationRM() ? Icons.visibility_off : Icons.visibility,
            ),
            label: Row(
              children: [
                explanationRM()
                    ? 'Hide Explanation'.text()
                    : 'Show Explanation'.text(),
              ],
            ),
          ).pad(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          ),
          if (explanationRM()) pearl.explanation.text(scale: 2).pad(),
        ],
      ),
    );
  }

  static final answerRM = false.obs();
  static final explanationRM = false.obs();
}
