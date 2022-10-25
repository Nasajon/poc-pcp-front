import 'package:flutter_core/flutter_core.dart';

import 'i18n.g.dart';

class PcpI18n extends Translation<I18nPt> {
  late final AppLocale _appLocale;

  PcpI18n() : _appLocale = AppLocaleUtils.findDeviceLocale();

  @override
  I18nPt get translations => _appLocale.build();
}

final tr = PcpI18n().translations;
