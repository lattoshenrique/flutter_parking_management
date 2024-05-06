import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets(
      'CommonErrorPage Widget Test With Custom Title, Message and Leading',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: CommonErrorPage(
          args: CommonErrorPageArgs(
            title: 'Custom Title',
            message: 'Custom Message',
            primaryButtonText: 'Primary Button',
            secondaryButtonText: 'Secondary Button',
            onPrimaryButtonPressed: () {},
            onSecondaryButtonPressed: () {},
            leading: const Icon(Icons.abc),
            onLeadingPressed: () {},
          ),
        ),
      ),
    );

    expect(find.byType(FilledButton), findsOneWidget);
    expect(find.byType(TextButton), findsOneWidget);
    expect(find.byIcon(Icons.abc), findsOneWidget);
    expect(find.text('Custom Message'), findsOneWidget);
    expect(find.text('Custom Title'), findsOneWidget);
  });

  testWidgets(
      'CommonErrorPage Widget Test With Default Title, Message and Leading',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: CommonErrorPage(
          args: CommonErrorPageArgs(
            primaryButtonText: 'Primary Button',
            secondaryButtonText: 'Secondary Button',
            onPrimaryButtonPressed: () {},
            onSecondaryButtonPressed: () {},
            onLeadingPressed: () {},
          ),
        ),
      ),
    );

    expect(find.text('Tivemos um problema'), findsOneWidget);
    expect(
      find.text(
        'Não foi possível carregar algumas informações. Por favor, tente novamente.',
      ),
      findsOneWidget,
    );
    expect(find.byType(FilledButton), findsOneWidget);
    expect(find.byType(TextButton), findsOneWidget);
    expect(find.byIcon(Icons.arrow_back), findsOneWidget);
  });

  testWidgets('CommonErrorPage Widget Test Without Primary Button',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: CommonErrorPage(
          args: CommonErrorPageArgs(
            title: 'Test Title',
            message: 'Test Message',
            secondaryButtonText: 'Secondary Button',
            onSecondaryButtonPressed: () {},
            leading: const Icon(Icons.arrow_back),
            onLeadingPressed: () {},
          ),
        ),
      ),
    );

    expect(find.text('Test Title'), findsOneWidget);
    expect(find.text('Test Message'), findsOneWidget);
    expect(find.byType(FilledButton), findsNothing);
    expect(find.byType(TextButton), findsOneWidget);
    expect(find.byIcon(Icons.arrow_back), findsOneWidget);
  });

  testWidgets('CommonErrorPage Widget Test Without Secondary Button',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: CommonErrorPage(
          args: CommonErrorPageArgs(
            title: 'Test Title',
            message: 'Test Message',
            primaryButtonText: 'Primary Button',
            onPrimaryButtonPressed: () {},
            leading: const Icon(Icons.arrow_back),
            onLeadingPressed: () {},
          ),
        ),
      ),
    );

    expect(find.text('Test Title'), findsOneWidget);
    expect(find.text('Test Message'), findsOneWidget);
    expect(find.byType(FilledButton), findsOneWidget);
    expect(find.byType(TextButton), findsNothing);
    expect(find.byIcon(Icons.arrow_back), findsOneWidget);
  });

  testWidgets('CommonErrorPage Widget Test Without Any Buttons',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: CommonErrorPage(
          args: CommonErrorPageArgs(
            leading: const Icon(Icons.arrow_back),
            onLeadingPressed: () {},
          ),
        ),
      ),
    );

    expect(find.text('Tivemos um problema'), findsOneWidget);
    expect(
      find.text(
        'Não foi possível carregar algumas informações. Por favor, tente novamente.',
      ),
      findsOneWidget,
    );
    expect(find.byType(FilledButton), findsNothing);
    expect(find.byType(TextButton), findsNothing);
    expect(find.byIcon(Icons.arrow_back), findsOneWidget);
  });
}
