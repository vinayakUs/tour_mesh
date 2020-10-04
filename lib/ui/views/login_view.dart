import 'package:flutter/material.dart';
import 'package:tour_mesh/core/model/login_model.dart';
import 'package:stacked/stacked.dart';
import 'package:tour_mesh/locator.dart';
import 'package:tour_mesh/ui/widgets/base_widget.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  void initState() {
    print("init state colled");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // return ViewModelBuilder<LoginModel>.reactive(
    //   viewModelBuilder: () => locator<LoginModel>(),
    //   builder: (context, model, child) => Scaffold(
    //     body: Column(
    //       children: [
    //         Row(
    //           children: [
    //             MaterialButton(
    //               onPressed: () {
    //                 model.setval();
    //               },
    //               child: Text("${model.val}"),
    //             ),
    //           ],
    //         )
    //       ],
    //     ),
    //   ),
    // );
    return BaseWidget(
        model: locator<LoginModel>(),
        builder: (context, model, child) => Scaffold(
              body: Column(
                children: [
                  Row(
                    children: [
                      MaterialButton(
                        onPressed: () {
                          model.setval();
                        },
                        child: Text("${model.getval()}"),
                      ),
                    ],
                  )
                ],
              ),
            ));
  }
}
