import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("แบบฟอร์มบันทึกข้อมูล"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                  decoration: new InputDecoration(labelText: "ชื่อรายการ"),
                  autofocus: true),
              TextFormField(
                decoration: new InputDecoration(labelText: "จำนวนเงิน"),
                keyboardType: TextInputType.number,
              ),
              FlatButton(
                color: Colors.purple,
                textColor: Colors.white,
                child: Text("เพิ่มข้อมูล"),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          )),
        ));
  }
}
