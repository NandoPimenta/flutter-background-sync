
import 'package:package_module/package_module.dart';
import 'core/services/firebase_data_module.dart';
import 'modules/common/common_module.dart';


enum AppModuleRoutes { common, user }

class AppModule extends BaseModule {
  @override
  List<BaseModule> get imports => [FirebaseDataModule()];

  
  @override
  nameRoutes() {
    StaticRoutes.routes = {
      "": [
        Route(module: "", tag: AppModuleRoutes.common),
        Route(module: "user", tag: AppModuleRoutes.user),

      ]
    };
  }

  @override
  void binds(i) {

  }

  @override
  void routes(r) {
    r.module(StaticRoutes.initial, module: CommonModule());
  

  }
}
