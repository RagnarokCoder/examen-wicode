import 'package:line_icons/line_icons.dart';
import 'package:status_alert/status_alert.dart';

import '../../styles/colores.dart';

error(String title, subtitle, context) {
  StatusAlert.show(
    context,
    backgroundColor: colorCard,
    duration: const Duration(seconds: 2),
    title: title,
    subtitle: subtitle,
    configuration:
        IconConfiguration(icon: LineIcons.infoCircle, color: color3, size: 35),
    maxWidth: 290,
  );
}
