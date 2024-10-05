/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'protocol.dart' as _i2;

abstract class Notification
    implements _i1.SerializableModel, _i1.ProtocolSerialization {
  Notification._({
    required this.botToken,
    required this.ticker,
    required this.koreaExchange,
    required this.foreignExchange,
    required this.primeum,
  });

  factory Notification({
    required String botToken,
    required _i2.Ticker ticker,
    required _i2.Exchange koreaExchange,
    required _i2.Exchange foreignExchange,
    required int primeum,
  }) = _NotificationImpl;

  factory Notification.fromJson(Map<String, dynamic> jsonSerialization) {
    return Notification(
      botToken: jsonSerialization['botToken'] as String,
      ticker: _i2.Ticker.fromJson((jsonSerialization['ticker'] as String)),
      koreaExchange:
          _i2.Exchange.fromJson((jsonSerialization['koreaExchange'] as String)),
      foreignExchange: _i2.Exchange.fromJson(
          (jsonSerialization['foreignExchange'] as String)),
      primeum: jsonSerialization['primeum'] as int,
    );
  }

  String botToken;

  _i2.Ticker ticker;

  _i2.Exchange koreaExchange;

  _i2.Exchange foreignExchange;

  int primeum;

  Notification copyWith({
    String? botToken,
    _i2.Ticker? ticker,
    _i2.Exchange? koreaExchange,
    _i2.Exchange? foreignExchange,
    int? primeum,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'botToken': botToken,
      'ticker': ticker.toJson(),
      'koreaExchange': koreaExchange.toJson(),
      'foreignExchange': foreignExchange.toJson(),
      'primeum': primeum,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      'botToken': botToken,
      'ticker': ticker.toJson(),
      'koreaExchange': koreaExchange.toJson(),
      'foreignExchange': foreignExchange.toJson(),
      'primeum': primeum,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _NotificationImpl extends Notification {
  _NotificationImpl({
    required String botToken,
    required _i2.Ticker ticker,
    required _i2.Exchange koreaExchange,
    required _i2.Exchange foreignExchange,
    required int primeum,
  }) : super._(
          botToken: botToken,
          ticker: ticker,
          koreaExchange: koreaExchange,
          foreignExchange: foreignExchange,
          primeum: primeum,
        );

  @override
  Notification copyWith({
    String? botToken,
    _i2.Ticker? ticker,
    _i2.Exchange? koreaExchange,
    _i2.Exchange? foreignExchange,
    int? primeum,
  }) {
    return Notification(
      botToken: botToken ?? this.botToken,
      ticker: ticker ?? this.ticker,
      koreaExchange: koreaExchange ?? this.koreaExchange,
      foreignExchange: foreignExchange ?? this.foreignExchange,
      primeum: primeum ?? this.primeum,
    );
  }
}
