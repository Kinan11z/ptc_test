import 'package:bloc/bloc.dart';

part 'bottom_Navigation_event.dart';
part 'bottom_Navigation_state.dart';

class BottomNavigationBloc
    extends Bloc<BottomNavigationEvent, BottomNavigationState> {
  BottomNavigationBloc() : super(PlaceInitial()) {
    on<NavigateToNewBarEvent>((event, emit) {
      emit(NavigateToNewBarState(newIndex: event.newIndex));
    });
  }
}
