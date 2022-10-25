import 'package:flutter_dependencies/flutter_dependencies.dart';

import 'pcp_module_binding.dart';
import 'pcp_module_routing.dart';

class PcpModule extends Module {
  @override
  final List<Bind> binds = PcpModuleBinding.binds;

  @override
  List<ModularRoute> routes = PcpRouting.routes;
}
