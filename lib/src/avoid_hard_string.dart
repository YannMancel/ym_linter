import 'package:analyzer/error/listener.dart';
import 'package:custom_lint_builder/custom_lint_builder.dart';

class AvoidHardString extends DartLintRule {
  const AvoidHardString() : super(code: _code);

  /// This is used for `// ignore: code` and enabling/disabling the lint
  static const _code = LintCode(
    name: 'avoid_hard_string',
    problemMessage: 'This is the description of avoid_hard_string lint.',
  );

  @override
  void run(
    CustomLintResolver resolver,
    ErrorReporter reporter,
    CustomLintContext context,
  ) {
    // Our lint will highlight all variable declarations with our custom warning.
    context.registry.addVariableDeclaration((node) {
      // "node" exposes metadata about the variable declaration. We could
      // check "node" to show the lint only in some conditions.

      // This line tells custom_lint to render a waring at the location of "node".
      // And the warning shown will use our `code` variable defined above as description.
      reporter.reportErrorForNode(code, node);
    });
  }
}
