import 'dart:async';
import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'app_themes.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc(ThemeState initialState) : super(initialState);

  ThemeState get initialState =>
      ThemeState(themeData: appThemeData[AppThemeColor.GreenLight]);

  @override
  Stream<ThemeState> mapEventToState(
    ThemeEvent event,
  ) async* {
    if (event is ThemeChanged) {
      yield ThemeState(themeData: appThemeData[event.themeColor]);
    }
  }
}

@immutable
abstract class ThemeEvent extends Equatable {
  ThemeEvent([List props = const <dynamic>[]]);
}

class ThemeChanged extends ThemeEvent {
  final AppThemeColor themeColor;

  ThemeChanged({
    @required this.themeColor,
  }) : super([themeColor]);

  @override
  List<Object> get props => [themeColor];
}

@immutable
class ThemeState extends Equatable {
  final ThemeData themeData;

  ThemeState({
    @required this.themeData,
  });

  @override
  List<Object> get props => [themeData];
}
