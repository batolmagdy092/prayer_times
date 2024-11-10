import 'package:flutter/material.dart';
import '../Providers/Prayer_providers.dart';
import '../Widgets/prayer_widget.dart';
import 'package:provider/provider.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Prayer Time",
          style: TextStyle(fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),

      body: Consumer<Prayer_Provider>(
          builder:(context, providerobj , child)
          {
            final getdatas= providerobj.getdata;
            if(getdatas ==null)
            {
              providerobj.fetchprayer();
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            else
            {
              return   ListView.builder(
                  itemCount: getdatas.data.length,
                  itemBuilder: (contxt, index)
                  {
                    final prayername = getdatas.data;
                    final prayertime = getdatas.data;
                    return Wid(
                      prayerName: prayername.elementAt(index),
                      time: prayertime.elementAt(index),
                    );
                  }
              );
            }
          }
      ),
    );
  }
}