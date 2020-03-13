// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'example.dart';

// **************************************************************************
// SuperEnumGenerator
// **************************************************************************

@immutable
abstract class Attribute extends Equatable {
  const Attribute(this._type);

  factory Attribute.strength({@required int value}) = Strength.create;

  factory Attribute.intelligence({@required int value}) = Intelligence.create;

  factory Attribute.agility({@required int value}) = Agility.create;

  factory Attribute.dexterity({@required int value}) = Dexterity.create;

  factory Attribute.endurance({@required int value}) = Endurance.create;

  factory Attribute.speed({@required int value}) = Speed.create;

  final _Attribute _type;

//ignore: missing_return
  R when<R>(
      {@required R Function(Strength) strength,
      @required R Function(Intelligence) intelligence,
      @required R Function(Agility) agility,
      @required R Function(Dexterity) dexterity,
      @required R Function(Endurance) endurance,
      @required R Function(Speed) speed}) {
    assert(() {
      if (strength == null ||
          intelligence == null ||
          agility == null ||
          dexterity == null ||
          endurance == null ||
          speed == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _Attribute.Strength:
        return strength(this as Strength);
      case _Attribute.Intelligence:
        return intelligence(this as Intelligence);
      case _Attribute.Agility:
        return agility(this as Agility);
      case _Attribute.Dexterity:
        return dexterity(this as Dexterity);
      case _Attribute.Endurance:
        return endurance(this as Endurance);
      case _Attribute.Speed:
        return speed(this as Speed);
    }
  }

//ignore: missing_return
  Future<R> asyncWhen<R>(
      {@required FutureOr<R> Function(Strength) strength,
      @required FutureOr<R> Function(Intelligence) intelligence,
      @required FutureOr<R> Function(Agility) agility,
      @required FutureOr<R> Function(Dexterity) dexterity,
      @required FutureOr<R> Function(Endurance) endurance,
      @required FutureOr<R> Function(Speed) speed}) {
    assert(() {
      if (strength == null ||
          intelligence == null ||
          agility == null ||
          dexterity == null ||
          endurance == null ||
          speed == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _Attribute.Strength:
        return strength(this as Strength);
      case _Attribute.Intelligence:
        return intelligence(this as Intelligence);
      case _Attribute.Agility:
        return agility(this as Agility);
      case _Attribute.Dexterity:
        return dexterity(this as Dexterity);
      case _Attribute.Endurance:
        return endurance(this as Endurance);
      case _Attribute.Speed:
        return speed(this as Speed);
    }
  }

  R whenOrElse<R>(
      {R Function(Strength) strength,
      R Function(Intelligence) intelligence,
      R Function(Agility) agility,
      R Function(Dexterity) dexterity,
      R Function(Endurance) endurance,
      R Function(Speed) speed,
      @required R Function(Attribute) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _Attribute.Strength:
        if (strength == null) break;
        return strength(this as Strength);
      case _Attribute.Intelligence:
        if (intelligence == null) break;
        return intelligence(this as Intelligence);
      case _Attribute.Agility:
        if (agility == null) break;
        return agility(this as Agility);
      case _Attribute.Dexterity:
        if (dexterity == null) break;
        return dexterity(this as Dexterity);
      case _Attribute.Endurance:
        if (endurance == null) break;
        return endurance(this as Endurance);
      case _Attribute.Speed:
        if (speed == null) break;
        return speed(this as Speed);
    }
    return orElse(this);
  }

  Future<R> asyncWhenOrElse<R>(
      {FutureOr<R> Function(Strength) strength,
      FutureOr<R> Function(Intelligence) intelligence,
      FutureOr<R> Function(Agility) agility,
      FutureOr<R> Function(Dexterity) dexterity,
      FutureOr<R> Function(Endurance) endurance,
      FutureOr<R> Function(Speed) speed,
      @required FutureOr<R> Function(Attribute) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _Attribute.Strength:
        if (strength == null) break;
        return strength(this as Strength);
      case _Attribute.Intelligence:
        if (intelligence == null) break;
        return intelligence(this as Intelligence);
      case _Attribute.Agility:
        if (agility == null) break;
        return agility(this as Agility);
      case _Attribute.Dexterity:
        if (dexterity == null) break;
        return dexterity(this as Dexterity);
      case _Attribute.Endurance:
        if (endurance == null) break;
        return endurance(this as Endurance);
      case _Attribute.Speed:
        if (speed == null) break;
        return speed(this as Speed);
    }
    return orElse(this);
  }

//ignore: missing_return
  Future<void> whenPartial(
      {FutureOr<void> Function(Strength) strength,
      FutureOr<void> Function(Intelligence) intelligence,
      FutureOr<void> Function(Agility) agility,
      FutureOr<void> Function(Dexterity) dexterity,
      FutureOr<void> Function(Endurance) endurance,
      FutureOr<void> Function(Speed) speed}) {
    assert(() {
      if (strength == null &&
          intelligence == null &&
          agility == null &&
          dexterity == null &&
          endurance == null &&
          speed == null) {
        throw 'provide at least one branch';
      }
      return true;
    }());
    switch (this._type) {
      case _Attribute.Strength:
        if (strength == null) break;
        return strength(this as Strength);
      case _Attribute.Intelligence:
        if (intelligence == null) break;
        return intelligence(this as Intelligence);
      case _Attribute.Agility:
        if (agility == null) break;
        return agility(this as Agility);
      case _Attribute.Dexterity:
        if (dexterity == null) break;
        return dexterity(this as Dexterity);
      case _Attribute.Endurance:
        if (endurance == null) break;
        return endurance(this as Endurance);
      case _Attribute.Speed:
        if (speed == null) break;
        return speed(this as Speed);
    }
  }

  @override
  List<Object> get props => const [];
}

@immutable
abstract class Strength extends Attribute {
  const Strength({@required this.value}) : super(_Attribute.Strength);

  factory Strength.create({@required int value}) = _StrengthImpl;

  final int value;

  Strength copyWith({int value});
}

@immutable
class _StrengthImpl extends Strength {
  const _StrengthImpl({@required this.value}) : super(value: value);

  @override
  final int value;

  @override
  _StrengthImpl copyWith({Object value = superEnum}) => _StrengthImpl(
        value: value == superEnum ? this.value : value as int,
      );
  @override
  String toString() => 'Strength(value: ${this.value})';
  @override
  List<Object> get props => [value];
}

@immutable
abstract class Intelligence extends Attribute {
  const Intelligence({@required this.value}) : super(_Attribute.Intelligence);

  factory Intelligence.create({@required int value}) = _IntelligenceImpl;

  final int value;

  Intelligence copyWith({int value});
}

@immutable
class _IntelligenceImpl extends Intelligence {
  const _IntelligenceImpl({@required this.value}) : super(value: value);

  @override
  final int value;

  @override
  _IntelligenceImpl copyWith({Object value = superEnum}) => _IntelligenceImpl(
        value: value == superEnum ? this.value : value as int,
      );
  @override
  String toString() => 'Intelligence(value: ${this.value})';
  @override
  List<Object> get props => [value];
}

@immutable
abstract class Agility extends Attribute {
  const Agility({@required this.value}) : super(_Attribute.Agility);

  factory Agility.create({@required int value}) = _AgilityImpl;

  final int value;

  Agility copyWith({int value});
}

@immutable
class _AgilityImpl extends Agility {
  const _AgilityImpl({@required this.value}) : super(value: value);

  @override
  final int value;

  @override
  _AgilityImpl copyWith({Object value = superEnum}) => _AgilityImpl(
        value: value == superEnum ? this.value : value as int,
      );
  @override
  String toString() => 'Agility(value: ${this.value})';
  @override
  List<Object> get props => [value];
}

@immutable
abstract class Dexterity extends Attribute {
  const Dexterity({@required this.value}) : super(_Attribute.Dexterity);

  factory Dexterity.create({@required int value}) = _DexterityImpl;

  final int value;

  Dexterity copyWith({int value});
}

@immutable
class _DexterityImpl extends Dexterity {
  const _DexterityImpl({@required this.value}) : super(value: value);

  @override
  final int value;

  @override
  _DexterityImpl copyWith({Object value = superEnum}) => _DexterityImpl(
        value: value == superEnum ? this.value : value as int,
      );
  @override
  String toString() => 'Dexterity(value: ${this.value})';
  @override
  List<Object> get props => [value];
}

@immutable
abstract class Endurance extends Attribute {
  const Endurance({@required this.value}) : super(_Attribute.Endurance);

  factory Endurance.create({@required int value}) = _EnduranceImpl;

  final int value;

  Endurance copyWith({int value});
}

@immutable
class _EnduranceImpl extends Endurance {
  const _EnduranceImpl({@required this.value}) : super(value: value);

  @override
  final int value;

  @override
  _EnduranceImpl copyWith({Object value = superEnum}) => _EnduranceImpl(
        value: value == superEnum ? this.value : value as int,
      );
  @override
  String toString() => 'Endurance(value: ${this.value})';
  @override
  List<Object> get props => [value];
}

@immutable
abstract class Speed extends Attribute {
  const Speed({@required this.value}) : super(_Attribute.Speed);

  factory Speed.create({@required int value}) = _SpeedImpl;

  final int value;

  Speed copyWith({int value});
}

@immutable
class _SpeedImpl extends Speed {
  const _SpeedImpl({@required this.value}) : super(value: value);

  @override
  final int value;

  @override
  _SpeedImpl copyWith({Object value = superEnum}) => _SpeedImpl(
        value: value == superEnum ? this.value : value as int,
      );
  @override
  String toString() => 'Speed(value: ${this.value})';
  @override
  List<Object> get props => [value];
}
