/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'example.dart' as _i2;
import 'exchange.dart' as _i3;
import 'kimchi_premium.dart' as _i4;
import 'notification.dart' as _i5;
import 'ticker.dart' as _i6;
export 'example.dart';
export 'exchange.dart';
export 'kimchi_premium.dart';
export 'notification.dart';
export 'ticker.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (t == _i2.Example) {
      return _i2.Example.fromJson(data) as T;
    }
    if (t == _i3.Exchange) {
      return _i3.Exchange.fromJson(data) as T;
    }
    if (t == _i4.KimchiPremium) {
      return _i4.KimchiPremium.fromJson(data) as T;
    }
    if (t == _i5.Notification) {
      return _i5.Notification.fromJson(data) as T;
    }
    if (t == _i6.Ticker) {
      return _i6.Ticker.fromJson(data) as T;
    }
    if (t == _i1.getType<_i2.Example?>()) {
      return (data != null ? _i2.Example.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i3.Exchange?>()) {
      return (data != null ? _i3.Exchange.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.KimchiPremium?>()) {
      return (data != null ? _i4.KimchiPremium.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.Notification?>()) {
      return (data != null ? _i5.Notification.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.Ticker?>()) {
      return (data != null ? _i6.Ticker.fromJson(data) : null) as T;
    }
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;
    if (data is _i2.Example) {
      return 'Example';
    }
    if (data is _i3.Exchange) {
      return 'Exchange';
    }
    if (data is _i4.KimchiPremium) {
      return 'KimchiPremium';
    }
    if (data is _i5.Notification) {
      return 'Notification';
    }
    if (data is _i6.Ticker) {
      return 'Ticker';
    }
    return null;
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'Example') {
      return deserialize<_i2.Example>(data['data']);
    }
    if (data['className'] == 'Exchange') {
      return deserialize<_i3.Exchange>(data['data']);
    }
    if (data['className'] == 'KimchiPremium') {
      return deserialize<_i4.KimchiPremium>(data['data']);
    }
    if (data['className'] == 'Notification') {
      return deserialize<_i5.Notification>(data['data']);
    }
    if (data['className'] == 'Ticker') {
      return deserialize<_i6.Ticker>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
