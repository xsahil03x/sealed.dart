import 'package:meta/meta.dart';

const superEnum = SuperEnum._();

@immutable
class SuperEnum {
  const SuperEnum._();
}

const object = Object._();

@immutable
class Object {
  const Object._();
}

@immutable
class Data {
  final List<DataField> fields;

  const Data({@required this.fields});
}

const generic = Generic._();

@immutable
class Generic {
  const Generic._();
}

@immutable
class DataField<T> {
  final String name;
  final bool required;

  const DataField(this.name, {this.required = true});
}

@immutable
class UseClass {
  final Type type;
  final String name;

  const UseClass(this.type, {this.name});
}
