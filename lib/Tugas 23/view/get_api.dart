import 'package:flutter/material.dart';
import 'package:ppkd_b_3/Tugas%2023/api/get_user.dart';
import 'package:ppkd_b_3/Tugas%2023/model/model/user_model.dart';

class GetAPIScreen extends StatefulWidget {
  const GetAPIScreen({super.key});
  static const id = "/get_api_screen";

  @override
  State<GetAPIScreen> createState() => _GetAPIScreenState();
}

class _GetAPIScreenState extends State<GetAPIScreen> {
  @override
  // void initState() {
  //   super.initState();
  //   getUser();
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FutureBuilder<List<Welcome>>(
                future: getUser(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return CircularProgressIndicator();
                  } else if (snapshot.hasData) {
                    final users = snapshot.data as List<Welcome>;
                    print(users);
                    return ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: users.length,
                      itemBuilder: (BuildContext context, int index) {
                        final dataUser = users[index];
                        return ListTile(
                          leading: dataUser.image == ""
                              ? SizedBox()
                              : Image.network(dataUser.image ?? ""),
                          title: Text(dataUser.name ?? ""),
                          subtitle: Text(
                            "${dataUser.alternateNames} ${dataUser.dateOfBirth}" ??
                                "",
                          ),
                        );
                      },
                    );
                  } else {
                    return Text("Gagal Memuat data");
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
