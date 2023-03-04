import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:myapp/app/modules/dashboard/views/dashboard_view.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final auth = GetStorage();
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DashboardView()));
              },
            ),
          ),
          body: ListView(physics: BouncingScrollPhysics(), children: [
            Container(
                padding: EdgeInsets.symmetric(horizontal: 48),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          ClipOval(
                            child: Image.asset(
                              'assets/image/saya.jpg',
                              height: 100,
                              width: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Nama',
                      ),
                      const SizedBox(height: 10),
                      Text(
                        auth.read('full_name').toString(),
                      ),
                      // const SizedBox(height: 16),
                      Divider(),
                      Text(
                        'Email',
                      ),
                      const SizedBox(height: 10),
                      Text('dikha_029@smkassalaambandung.sch.id'),
                      // auth.read('email'),
                      Divider(),
                      Text(
                        'Deskripsi',
                      ),
                      const SizedBox(height: 10),
                      Text(
                          'Halo Saya Dikha Adi Nugraha. Saya Tinggal Dibandung, Saat Ini Saya Bersekolah Di Smk Assalaam Bandung, Dengan Jurusan Rekayasa Perangkat Lunak'),
                      Divider(),
                    ])),
            const SizedBox(height: 100),
            Center(child: Text('Ikuti Saya')),
            SizedBox(
              height: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipOval(
                      child: Image.network(
                        'https://cdn-icons-png.flaticon.com/512/25/25231.png',
                        height: 40,
                        width: 40,
                        fit: BoxFit.cover,
                      ),
                    ),
                    ClipOval(
                      child: Image.network(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Facebook_f_logo_%282019%29.svg/2048px-Facebook_f_logo_%282019%29.svg.png',
                        height: 40,
                        width: 40,
                        fit: BoxFit.cover,
                      ),
                    ),
                    ClipOval(
                      child: Image.network(
                        'https://png.pngtree.com/png-vector/20221018/ourmid/pngtree-instagram-icon-png-image_6315974.png',
                        height: 40,
                        width: 40,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ],
            )
          ])),
    );
  }
}
