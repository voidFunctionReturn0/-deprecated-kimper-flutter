import 'package:kimper_server/src/generated/kimchi_premium.dart';
import 'package:kimper_server/src/services/kimchi_premium_service.dart';
import 'package:serverpod/serverpod.dart';

class KimchiPremiumStreamEndpoint extends Endpoint {
  final _kimchiPremiumService = KimchiPremiumService();

  @override
  void initialize(Server server, String name, String? moduleName) {
    _kimchiPremiumService.start();
    super.initialize(server, name, moduleName);
  }

  // TODO:  to kimchi list
  Stream<KimchiPremium> streamkimchiPremiums(Session session) async* {
    await for (final kimchiPremiums in _kimchiPremiumService.stream) {
      print('## stream data $kimchiPremiums');
      yield kimchiPremiums;
    }
  }
}
