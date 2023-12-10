import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tour_guide/shared/cubit/states.dart';

class AppCubit extends Cubit<AppStates>
{
  AppCubit () : super (AppInitState());

  static AppCubit get(context) => BlocProvider.of(context);



}