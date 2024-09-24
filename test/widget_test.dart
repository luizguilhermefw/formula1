import 'package:flutter_test/flutter_test.dart';
import 'package:formula1/main.dart'; // Importe o arquivo principal do seu app

void main() {
  testWidgets('PilotosScreen smoke test', (WidgetTester tester) async {
    // Build o app e renderize a tela PilotosScreen
    await tester.pumpWidget(MyApp()); // Removido 'const'
    await tester.pumpAndSettle(); // Aguarde a renderização completa

    // Verifique se a AppBar está presente
    expect(find.text('Pilotos de F1 2024'), findsOneWidget);

    // Verifique se a lista de pilotos é exibida (ajuste o texto conforme necessário)
    expect(find.text('Max Verstappen'), findsOneWidget);
    expect(find.text('Lewis Hamilton'), findsOneWidget);

    // Você pode adicionar mais testes aqui para verificar outros elementos da tela,
    // como a presença de ícones, subtítulos, etc.
  });
}