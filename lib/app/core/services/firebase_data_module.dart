import 'package:package_firebase/remote_config/remote_config.dart';
import 'package:package_module/module/module.dart';


class FirebaseDataModule extends BaseModule {
  @override
  void exportedBinds(i) {
    i.addSingleton(RemoteConfig.new);
  }
}
