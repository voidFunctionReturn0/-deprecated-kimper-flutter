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

abstract class KimchiPremium
    implements _i1.SerializableModel, _i1.ProtocolSerialization {
  KimchiPremium._({
    required this.ticker,
    required this.koreaExchange,
    required this.koreaExchangePrice,
    required this.foreignExchange,
    required this.foreignExchangePrice,
    required this.kimchiPrimeum,
  });

  factory KimchiPremium({
    required _i2.Ticker ticker,
    required _i2.Exchange koreaExchange,
    required double koreaExchangePrice,
    required _i2.Exchange foreignExchange,
    required double foreignExchangePrice,
    required double kimchiPrimeum,
  }) = _KimchiPremiumImpl;

  factory KimchiPremium.fromJson(Map<String, dynamic> jsonSerialization) {
    return KimchiPremium(
      ticker: _i2.Ticker.fromJson((jsonSerialization['ticker'] as String)),
      koreaExchange:
          _i2.Exchange.fromJson((jsonSerialization['koreaExchange'] as String)),
      koreaExchangePrice:
          (jsonSerialization['koreaExchangePrice'] as num).toDouble(),
      foreignExchange: _i2.Exchange.fromJson(
          (jsonSerialization['foreignExchange'] as String)),
      foreignExchangePrice:
          (jsonSerialization['foreignExchangePrice'] as num).toDouble(),
      kimchiPrimeum: (jsonSerialization['kimchiPrimeum'] as num).toDouble(),
    );
  }

  _i2.Ticker ticker;

  _i2.Exchange koreaExchange;

  double koreaExchangePrice;

  _i2.Exchange foreignExchange;

  double foreignExchangePrice;

  double kimchiPrimeum;

  KimchiPremium copyWith({
    _i2.Ticker? ticker,
    _i2.Exchange? koreaExchange,
    double? koreaExchangePrice,
    _i2.Exchange? foreignExchange,
    double? foreignExchangePrice,
    double? kimchiPrimeum,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'ticker': ticker.toJson(),
      'koreaExchange': koreaExchange.toJson(),
      'koreaExchangePrice': koreaExchangePrice,
      'foreignExchange': foreignExchange.toJson(),
      'foreignExchangePrice': foreignExchangePrice,
      'kimchiPrimeum': kimchiPrimeum,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      'ticker': ticker.toJson(),
      'koreaExchange': koreaExchange.toJson(),
      'koreaExchangePrice': koreaExchangePrice,
      'foreignExchange': foreignExchange.toJson(),
      'foreignExchangePrice': foreignExchangePrice,
      'kimchiPrimeum': kimchiPrimeum,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _KimchiPremiumImpl extends KimchiPremium {
  _KimchiPremiumImpl({
    required _i2.Ticker ticker,
    required _i2.Exchange koreaExchange,
    required double koreaExchangePrice,
    required _i2.Exchange foreignExchange,
    required double foreignExchangePrice,
    required double kimchiPrimeum,
  }) : super._(
          ticker: ticker,
          koreaExchange: koreaExchange,
          koreaExchangePrice: koreaExchangePrice,
          foreignExchange: foreignExchange,
          foreignExchangePrice: foreignExchangePrice,
          kimchiPrimeum: kimchiPrimeum,
        );

  @override
  KimchiPremium copyWith({
    _i2.Ticker? ticker,
    _i2.Exchange? koreaExchange,
    double? koreaExchangePrice,
    _i2.Exchange? foreignExchange,
    double? foreignExchangePrice,
    double? kimchiPrimeum,
  }) {
    return KimchiPremium(
      ticker: ticker ?? this.ticker,
      koreaExchange: koreaExchange ?? this.koreaExchange,
      koreaExchangePrice: koreaExchangePrice ?? this.koreaExchangePrice,
      foreignExchange: foreignExchange ?? this.foreignExchange,
      foreignExchangePrice: foreignExchangePrice ?? this.foreignExchangePrice,
      kimchiPrimeum: kimchiPrimeum ?? this.kimchiPrimeum,
    );
  }
}
