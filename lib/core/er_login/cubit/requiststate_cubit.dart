// cubit/requiststate_cubit.dart

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../error/exception.dart';
import '../../error/failure.dart';
import '../../error/error_message_model.dart';

part 'requiststate_state.dart';

class RequiststateCubit extends Cubit<RequiststateState> {
  RequiststateCubit() : super(RequiststateInitial());

  Future<void> fetchData() async {
    emit(RequiststateLoading());
    try {
      await Future.delayed(const Duration(seconds: 2));

      throw ServerException(
        errorMessageModel: ErrorMessageModel(
          statusCode: 401,
          statusMessage: 'Unauthorized',
          success: false,
        ),
      );
    } on ServerException catch (e) {
      emit(RequiststateFailure(
          ServerFailure(e.errorMessageModel.statusMessage)));
    } catch (e) {
      emit(const RequiststateFailure(ServerFailure("Unknown error occurred")));
    }
  }
}
