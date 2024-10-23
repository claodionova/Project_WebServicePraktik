import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:appflutter/main.dart'; // Sesuaikan dengan path aplikasi utama kamu.

void main() {
  testWidgets('MyHomePage displays correctly', (WidgetTester tester) async {
    // Build the MyApp widget and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Check if the AppBar title is displayed correctly.
    expect(find.text('My App Bar'), findsOneWidget);

    // Check if the image is displayed.
    expect(find.byType(Image), findsOneWidget);

    // Check if the icons are displayed.
    expect(find.byIcon(Icons.history), findsOneWidget);
    expect(find.byIcon(Icons.shopping_cart), findsOneWidget);
    expect(find.byIcon(Icons.apartment), findsOneWidget);

    // Check if the list of names is displayed.
    expect(find.text('Andi'), findsOneWidget);
    expect(find.text('Budi'), findsOneWidget);
    expect(find.text('Caca'), findsOneWidget);
    expect(find.text('Dedi'), findsOneWidget);
    expect(find.text('Eka'), findsOneWidget);
    expect(find.text('Fani'), findsOneWidget);
    expect(find.text('Gilang'), findsOneWidget);
    expect(find.text('Hadi'), findsOneWidget);
    expect(find.text('Ira'), findsOneWidget);
    expect(find.text('Joko'), findsOneWidget);
    expect(find.text('Kiki'), findsOneWidget);
    expect(find.text('Lina'), findsOneWidget);
    expect(find.text('Mira'), findsOneWidget);
  });
}
