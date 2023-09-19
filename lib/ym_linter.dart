library ym_linter;

import 'package:custom_lint_builder/custom_lint_builder.dart';
import 'package:ym_linter/src/_src.dart';

PluginBase createPlugin() => _Plugin();

class _Plugin extends PluginBase {
  @override
  List<LintRule> getLintRules(CustomLintConfigs configs) {
    return const <LintRule>[
      AvoidHardString(),
    ];
  }
}
