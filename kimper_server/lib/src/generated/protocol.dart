/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

library; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod/protocol.dart' as _i2;
import 'example.dart' as _i3;
import 'exchange.dart' as _i4;
import 'kimchi_premium.dart' as _i5;
import 'notification.dart' as _i6;
import 'ticker.dart' as _i7;
export 'example.dart';
export 'exchange.dart';
export 'kimchi_premium.dart';
export 'notification.dart';
export 'ticker.dart';

class Protocol extends _i1.SerializationManagerServer {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  static final List<_i2.TableDefinition> targetTableDefinitions = [
    ..._i2.Protocol.targetTableDefinitions
  ];

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (t == _i3.Example) {
      return _i3.Example.fromJson(data) as T;
    }
    if (t == _i4.Exchange) {
      return _i4.Exchange.fromJson(data) as T;
    }
    if (t == _i5.KimchiPremium) {
      return _i5.KimchiPremium.fromJson(data) as T;
    }
    if (t == _i6.Notification) {
      return _i6.Notification.fromJson(data) as T;
    }
    if (t == _i7.Ticker) {
      return _i7.Ticker.fromJson(data) as T;
    }
    if (t == _i1.getType<_i3.Example?>()) {
      return (data != null ? _i3.Example.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.Exchange?>()) {
      return (data != null ? _i4.Exchange.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.KimchiPremium?>()) {
      return (data != null ? _i5.KimchiPremium.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.Notification?>()) {
      return (data != null ? _i6.Notification.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.Ticker?>()) {
      return (data != null ? _i7.Ticker.fromJson(data) : null) as T;
    }
    try {
      return _i2.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;
    if (data is _i3.Example) {
      return 'Example';
    }
    if (data is _i4.Exchange) {
      return 'Exchange';
    }
    if (data is _i5.KimchiPremium) {
      return 'KimchiPremium';
    }
    if (data is _i6.Notification) {
      return 'Notification';
    }
    if (data is _i7.Ticker) {
      return 'Ticker';
    }
    className = _i2.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod.$className';
    }
    return null;
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'Example') {
      return deserialize<_i3.Example>(data['data']);
    }
    if (data['className'] == 'Exchange') {
      return deserialize<_i4.Exchange>(data['data']);
    }
    if (data['className'] == 'KimchiPremium') {
      return deserialize<_i5.KimchiPremium>(data['data']);
    }
    if (data['className'] == 'Notification') {
      return deserialize<_i6.Notification>(data['data']);
    }
    if (data['className'] == 'Ticker') {
      return deserialize<_i7.Ticker>(data['data']);
    }
    if (data['className'].startsWith('serverpod.')) {
      data['className'] = data['className'].substring(10);
      return _i2.Protocol().deserializeByClassName(data);
    }
    return super.deserializeByClassName(data);
  }

  @override
  _i1.Table? getTableForType(Type t) {
    {
      var table = _i2.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    return null;
  }

  @override
  List<_i2.TableDefinition> getTargetTableDefinitions() =>
      targetTableDefinitions;

  @override
  String getModuleName() => 'kimper';
}
