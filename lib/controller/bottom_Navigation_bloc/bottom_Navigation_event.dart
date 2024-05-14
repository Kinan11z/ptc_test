// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'bottom_Navigation_bloc.dart';

sealed class BottomNavigationEvent {
  const BottomNavigationEvent();
}

class NavigateToNewBarEvent extends BottomNavigationEvent {
  int newIndex;
  NavigateToNewBarEvent({
    required this.newIndex,
  });
}
