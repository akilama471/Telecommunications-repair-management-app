import 'package:flutter/material.dart';
import 'package:telecom_worker_manager_flutter/config/app_sizes.dart';
import 'package:telecom_worker_manager_flutter/config/app_texts.dart';
import 'package:telecom_worker_manager_flutter/config/app_assests.dart';

class SignInUiScreen extends StatefulWidget {
  const SignInUiScreen({Key? key}) : super(key: key);
  static const String routeName = '/sign-in';

  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (context) => const SignInUiScreen());
  }

  @override
  SignInUiScreenState createState() => SignInUiScreenState();
}

class SignInUiScreenState extends State<SignInUiScreen> {
  SignInUiScreenState() {
    _selectedValue = _sampleList[0];
  }

  final _sampleList = ["Main", "Wariyapola"];
  String? _selectedValue = "";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Container(
          padding: const EdgeInsets.all(SizeConfig.tDefaultSize),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                  image: const AssetImage(AssetStore.permissionHeader),
                  height: MediaQuery.of(context).size.height * 0.2),
              const SizedBox(height: 10),
              Text(
                TextConfig.tRegisterTitle,
                style: Theme.of(context).textTheme.headline2,
              ),
              Text(
                TextConfig.tLoginSubTitle,
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Form(
                  child: Container(
                padding: const EdgeInsets.symmetric(
                    vertical: SizeConfig.tFormHeight - 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 5.0),
                          prefixIcon: Icon(
                            Icons.person,
                            size: 22,
                          ),
                          labelText: TextConfig.tFname,
                          hintText: TextConfig.tFname,
                          border: OutlineInputBorder()),
                      style: const TextStyle(fontSize: 14),
                    ),
                    const SizedBox(height: SizeConfig.tFormHeight - 20),
                    TextFormField(
                      decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 5.0),
                          prefixIcon: Icon(
                            Icons.person,
                            size: 22,
                          ),
                          labelText: TextConfig.tLname,
                          hintText: TextConfig.tLname,
                          border: OutlineInputBorder()),
                      style: const TextStyle(fontSize: 14),
                    ),
                    const SizedBox(height: SizeConfig.tFormHeight - 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 220,
                          child: TextFormField(
                            keyboardType: TextInputType.phone,
                            decoration: const InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 5.0),
                                prefixIcon: Icon(
                                  Icons.phone,
                                  size: 22,
                                ),
                                labelText: TextConfig.tPhone,
                                hintText: TextConfig.tPhone,
                                border: OutlineInputBorder()),
                            style: const TextStyle(fontSize: 14),
                          ),
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: const Text(TextConfig.tVerify))
                      ],
                    ),
                    const SizedBox(height: SizeConfig.tFormHeight - 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 220,
                          child: TextFormField(
                            keyboardType: TextInputType.phone,
                            decoration: const InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 5.0),
                                prefixIcon: Icon(
                                  Icons.email,
                                  size: 22,
                                ),
                                labelText: TextConfig.tEmail,
                                hintText: TextConfig.tEmail,
                                border: OutlineInputBorder()),
                            style: const TextStyle(fontSize: 14),
                          ),
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: const Text(TextConfig.tVerify))
                      ],
                    ),
                    const SizedBox(height: SizeConfig.tFormHeight - 20),
                    DropdownButtonFormField(
                      value: _selectedValue,
                      items: _sampleList
                          .map(
                              (e) => DropdownMenuItem(value: e, child: Text(e)))
                          .toList(),
                      onChanged: ((value) {
                        setState(() {
                          _selectedValue = value as String;
                        });
                      }),
                      icon: const Icon(
                        Icons.arrow_drop_down_circle,
                        color: Colors.amber,
                      ),
                      dropdownColor: Colors.amber.shade100,
                      decoration: const InputDecoration(
                          labelText: TextConfig.tSelectBranch,
                          prefixIcon: Icon(
                            Icons.store,
                            color: Colors.amber,
                          ),
                          border: OutlineInputBorder()),
                    )
                  ],
                ),
              ))
            ],
          ),
        )),
      ),
    );
  }
}
