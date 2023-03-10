import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_developer_student_clubs/utils/repository/auth_repositary.dart';

class AuthCubit extends Cubit<AuthState>{
  final AuthRepositoryBase _authRepository;
  late StreamSubscription _authSubscription;


  AuthCubit(this._authRepository) : super(AuthInitialState());

  Future<void> init() async {
    _authSubscription = _authRepository.onAuthStateChanged.listen(_authStateChanged);
  }

  void _authStateChanged(AuthUser? user) =>
      user == null ? emit(AuthSignedOut()) : emit(AuthSignedIn(user));

  /** Función que permite ingresar a traves de otras redes sociales **/

  Future<void> signInAnonymously() => _signIn(_authRepository.signInAnonymously());

  Future<void> _signIn(Future<AuthUser?> auxUser) async {
    try{
      emit(AuthSigningIn());
      final user = await auxUser;
      if (user == null){
        emit(AuthError('Unknown error, try again later'));
      }else{
        emit(AuthSignedIn(user));
      }
    }catch(e){
      emit(AuthError('Error: ${e.toString()}'));
    }
  }


  @override
  Future<void> close() {
    _authSubscription.cancel();
    return super.close();
  }


}

abstract class AuthState extends Equatable{
  @override
  List<Object?> get props => [];
}

class AuthInitialState extends AuthState{}

class AuthSignedOut extends AuthState{}

class AuthSigningIn extends AuthState{}

class AuthError extends AuthState{
  final String message;

  AuthError(this.message);

  @override
  List<Object?> get props => [message];

}

class AuthSignedIn extends AuthState{
  final AuthUser user;

  AuthSignedIn(this.user);

  @override
  List<Object?> get props => [user];

}

