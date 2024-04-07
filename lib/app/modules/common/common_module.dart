import 'package:package_module/package_module.dart';

import 'splash/splash_module.dart';

enum CommonRoute{splash}
class CommonModule extends BaseModule {
  
    @override
  nameRoutes() {
    StaticRoutes.routes = {
      "/":[
      Route(module: "", tag: CommonRoute.splash),
    ]
    };
  }

  
  
  @override
  void routes(r) {
    r.module(StaticRoutes.initial, module: SplashModule());
   
  }
}
