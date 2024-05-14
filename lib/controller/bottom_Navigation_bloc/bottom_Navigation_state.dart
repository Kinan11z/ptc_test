// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'bottom_Navigation_bloc.dart';

sealed class BottomNavigationState {
  const BottomNavigationState();
}

final class PlaceInitial extends BottomNavigationState {}

class LoadingPlaceState extends BottomNavigationState {}

class NavigateToNewBarState extends BottomNavigationState {
  int newIndex;
  NavigateToNewBarState({
    required this.newIndex,
  });
}
