// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'forecast_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ForecastEventTearOff {
  const _$ForecastEventTearOff();

// ignore: unused_element
  PageInitialized pageInitialized() {
    return const PageInitialized();
  }
}

// ignore: unused_element
const $ForecastEvent = _$ForecastEventTearOff();

mixin _$ForecastEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result pageInitialized(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result pageInitialized(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result pageInitialized(PageInitialized value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result pageInitialized(PageInitialized value),
    @required Result orElse(),
  });
}

abstract class $ForecastEventCopyWith<$Res> {
  factory $ForecastEventCopyWith(
          ForecastEvent value, $Res Function(ForecastEvent) then) =
      _$ForecastEventCopyWithImpl<$Res>;
}

class _$ForecastEventCopyWithImpl<$Res>
    implements $ForecastEventCopyWith<$Res> {
  _$ForecastEventCopyWithImpl(this._value, this._then);

  final ForecastEvent _value;
  // ignore: unused_field
  final $Res Function(ForecastEvent) _then;
}

abstract class $PageInitializedCopyWith<$Res> {
  factory $PageInitializedCopyWith(
          PageInitialized value, $Res Function(PageInitialized) then) =
      _$PageInitializedCopyWithImpl<$Res>;
}

class _$PageInitializedCopyWithImpl<$Res>
    extends _$ForecastEventCopyWithImpl<$Res>
    implements $PageInitializedCopyWith<$Res> {
  _$PageInitializedCopyWithImpl(
      PageInitialized _value, $Res Function(PageInitialized) _then)
      : super(_value, (v) => _then(v as PageInitialized));

  @override
  PageInitialized get _value => super._value as PageInitialized;
}

class _$PageInitialized implements PageInitialized {
  const _$PageInitialized();

  @override
  String toString() {
    return 'ForecastEvent.pageInitialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PageInitialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result pageInitialized(),
  }) {
    assert(pageInitialized != null);
    return pageInitialized();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result pageInitialized(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (pageInitialized != null) {
      return pageInitialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result pageInitialized(PageInitialized value),
  }) {
    assert(pageInitialized != null);
    return pageInitialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result pageInitialized(PageInitialized value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (pageInitialized != null) {
      return pageInitialized(this);
    }
    return orElse();
  }
}

abstract class PageInitialized implements ForecastEvent {
  const factory PageInitialized() = _$PageInitialized;
}

class _$ForecastStateTearOff {
  const _$ForecastStateTearOff();

// ignore: unused_element
  _ForecastState call(
      {@required List<Forecast> topForecasts,
      @required List<List<Forecast>> listForecasts,
      @required bool isLoading,
      @required String error}) {
    return _ForecastState(
      topForecasts: topForecasts,
      listForecasts: listForecasts,
      isLoading: isLoading,
      error: error,
    );
  }
}

// ignore: unused_element
const $ForecastState = _$ForecastStateTearOff();

mixin _$ForecastState {
  List<Forecast> get topForecasts;
  List<List<Forecast>> get listForecasts;
  bool get isLoading;
  String get error;

  $ForecastStateCopyWith<ForecastState> get copyWith;
}

abstract class $ForecastStateCopyWith<$Res> {
  factory $ForecastStateCopyWith(
          ForecastState value, $Res Function(ForecastState) then) =
      _$ForecastStateCopyWithImpl<$Res>;
  $Res call(
      {List<Forecast> topForecasts,
      List<List<Forecast>> listForecasts,
      bool isLoading,
      String error});
}

class _$ForecastStateCopyWithImpl<$Res>
    implements $ForecastStateCopyWith<$Res> {
  _$ForecastStateCopyWithImpl(this._value, this._then);

  final ForecastState _value;
  // ignore: unused_field
  final $Res Function(ForecastState) _then;

  @override
  $Res call({
    Object topForecasts = freezed,
    Object listForecasts = freezed,
    Object isLoading = freezed,
    Object error = freezed,
  }) {
    return _then(_value.copyWith(
      topForecasts: topForecasts == freezed
          ? _value.topForecasts
          : topForecasts as List<Forecast>,
      listForecasts: listForecasts == freezed
          ? _value.listForecasts
          : listForecasts as List<List<Forecast>>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      error: error == freezed ? _value.error : error as String,
    ));
  }
}

abstract class _$ForecastStateCopyWith<$Res>
    implements $ForecastStateCopyWith<$Res> {
  factory _$ForecastStateCopyWith(
          _ForecastState value, $Res Function(_ForecastState) then) =
      __$ForecastStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Forecast> topForecasts,
      List<List<Forecast>> listForecasts,
      bool isLoading,
      String error});
}

class __$ForecastStateCopyWithImpl<$Res>
    extends _$ForecastStateCopyWithImpl<$Res>
    implements _$ForecastStateCopyWith<$Res> {
  __$ForecastStateCopyWithImpl(
      _ForecastState _value, $Res Function(_ForecastState) _then)
      : super(_value, (v) => _then(v as _ForecastState));

  @override
  _ForecastState get _value => super._value as _ForecastState;

  @override
  $Res call({
    Object topForecasts = freezed,
    Object listForecasts = freezed,
    Object isLoading = freezed,
    Object error = freezed,
  }) {
    return _then(_ForecastState(
      topForecasts: topForecasts == freezed
          ? _value.topForecasts
          : topForecasts as List<Forecast>,
      listForecasts: listForecasts == freezed
          ? _value.listForecasts
          : listForecasts as List<List<Forecast>>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      error: error == freezed ? _value.error : error as String,
    ));
  }
}

class _$_ForecastState extends _ForecastState {
  const _$_ForecastState(
      {@required this.topForecasts,
      @required this.listForecasts,
      @required this.isLoading,
      @required this.error})
      : assert(topForecasts != null),
        assert(listForecasts != null),
        assert(isLoading != null),
        assert(error != null),
        super._();

  @override
  final List<Forecast> topForecasts;
  @override
  final List<List<Forecast>> listForecasts;
  @override
  final bool isLoading;
  @override
  final String error;

  @override
  String toString() {
    return 'ForecastState(topForecasts: $topForecasts, listForecasts: $listForecasts, isLoading: $isLoading, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ForecastState &&
            (identical(other.topForecasts, topForecasts) ||
                const DeepCollectionEquality()
                    .equals(other.topForecasts, topForecasts)) &&
            (identical(other.listForecasts, listForecasts) ||
                const DeepCollectionEquality()
                    .equals(other.listForecasts, listForecasts)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(topForecasts) ^
      const DeepCollectionEquality().hash(listForecasts) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(error);

  @override
  _$ForecastStateCopyWith<_ForecastState> get copyWith =>
      __$ForecastStateCopyWithImpl<_ForecastState>(this, _$identity);
}

abstract class _ForecastState extends ForecastState {
  const _ForecastState._() : super._();
  const factory _ForecastState(
      {@required List<Forecast> topForecasts,
      @required List<List<Forecast>> listForecasts,
      @required bool isLoading,
      @required String error}) = _$_ForecastState;

  @override
  List<Forecast> get topForecasts;
  @override
  List<List<Forecast>> get listForecasts;
  @override
  bool get isLoading;
  @override
  String get error;
  @override
  _$ForecastStateCopyWith<_ForecastState> get copyWith;
}
