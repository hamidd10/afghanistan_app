// Event
import 'dart:async';

import 'package:flutter/material.dart';

abstract class UserEvent {}

class UpdateUserEvent extends UserEvent {
  final String name;
  final int age;

  UpdateUserEvent(this.name, this.age);
}

// State
class UserState {
  final String name;
  final int age;

  UserState(this.name, this.age);
}

// Bloc
class UserBloc {
  final _userController = StreamController<UserState>.broadcast();
  UserState _userState = UserState("John Doe", 30);

  Stream<UserState> get userStream => _userController.stream;

  void dispatch(UserEvent event) {
    if (event is UpdateUserEvent) {
      _userState = UserState(event.name, event.age);
      _userController.add(_userState);
    }
  }

  void dispose() {
    _userController.close();
  }
}

// View
class UserView extends StatelessWidget {
  final UserBloc bloc = UserBloc();

  UserView({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<UserState>(
      stream: bloc.userStream,
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const CircularProgressIndicator();
        }

        return Column(
          children: [
            Text("Name: ${snapshot.data?.name}"),
            Text("Age: ${snapshot.data?.age}"),
            ElevatedButton(
              onPressed: () {
                bloc.dispatch(UpdateUserEvent("Jane Smith", 25));
              },
              child: const Text("Update User"),
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    bloc.dispose();
  }
}
