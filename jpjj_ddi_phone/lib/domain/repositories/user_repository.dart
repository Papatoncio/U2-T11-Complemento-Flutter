import 'package:jpjj_ddi_phone/domain/entities/user.dart';

abstract class UserRepository {
  Future<User> getUser(String id);
}
