import 'package:freezed_annotation/freezed_annotation.dart';

part 'cars.freezed.dart';
part 'cars.g.dart';

@freezed
class Cars with _$Cars {

  factory Cars({
    @Default(0) int id,
    @Default('') String price,

  }) = _Cars;

  factory Cars.fromJson(Map<String, dynamic> json) => _$CarsFromJson(json);
}