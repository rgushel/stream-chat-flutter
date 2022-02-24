import 'package:flutter/widgets.dart';
import 'package:stream_chat_flutter/src/platform_widgets/desktop_widget_base.dart';

/// A widget that will only be built for the specified desktop Platforms.
///
/// See [DesktopWidgetBuilder] and [DesktopWidgetBase] for more.
///
/// Also see: [PlatformWidget] and [PlatformWidgetBase].
class DesktopWidget extends DesktopWidgetBase<Widget, Widget, Widget> {
  /// Builds a [DesktopWidget].
  const DesktopWidget({
    Key? key,
    this.macOS,
    this.windows,
    this.linux,
  }) : super(key: key);

  /// The widget to build for macOS.
  final PlatformBuilder<Widget?>? macOS;

  /// The widget to build for Windows.
  final PlatformBuilder<Widget?>? windows;

  /// The widget to build for Linux.
  final PlatformBuilder<Widget?>? linux;

  @override
  Widget createMacosWidget(BuildContext context) =>
      macOS?.call(context) ?? const SizedBox.shrink();

  @override
  Widget createWindowsWidget(BuildContext context) =>
      windows?.call(context) ?? const SizedBox.shrink();

  @override
  Widget createLinuxWidget(BuildContext context) =>
      linux?.call(context) ?? const SizedBox.shrink();
}
