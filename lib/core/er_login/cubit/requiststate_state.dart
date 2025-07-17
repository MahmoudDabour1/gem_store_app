// cubit/requiststate_state.dart

part of 'requiststate_cubit.dart';

sealed class RequiststateState extends Equatable {
  const RequiststateState();

  @override
  List<Object?> get props => [];
}

final class RequiststateInitial extends RequiststateState {}

final class RequiststateLoading extends RequiststateState {}

final class RequiststateSuccess extends RequiststateState {
  final String message;

  const RequiststateSuccess(this.message);

  @override
  List<Object?> get props => [message];
}

final class RequiststateFailure extends RequiststateState {
  final ServerFailure failure;

  const RequiststateFailure(this.failure);

  @override
  List<Object?> get props => [failure];
}
