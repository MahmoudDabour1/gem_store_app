abstract class ScrollingState {}

class InitialScrollingState extends ScrollingState {}

class IncreaseDecreaseScrollingState extends ScrollingState {
   final int currentPage;

  IncreaseDecreaseScrollingState({required this.currentPage});
}

class DistroyScrollingState extends ScrollingState{}
