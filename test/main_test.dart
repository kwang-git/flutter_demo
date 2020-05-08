import 'package:flutter_test/flutter_test.dart';
import 'package:flutterdemo/main.dart';
import 'package:flutterdemo/pages/ConversationPageSlide.dart';

void main(){
  testWidgets('Main UI Test', (WidgetTester tester) async {
    //Build our app and trigger a frame.
    await tester.pumpWidget(Messio());

    expect(find.byType(ConversationPageSlide),findsOneWidget);
  });
}
