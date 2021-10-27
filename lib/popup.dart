import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';

class tableDialog extends StatelessWidget {
  final String title;

  //final Image image;

  const tableDialog({this.title});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }

  dialogContent(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.only(
            top: 80,
            bottom: 16,
            left: 16,
            right: 16,
          ),
          margin: const EdgeInsets.only(top: 16),
          decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(17),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black45,
                  blurRadius: 10.0,
                  offset: Offset(0.0, 10.0),
                )
              ]),
          child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            Text(title,
                style: GoogleFonts.sarabun(
                    textStyle: TextStyle(
                        fontSize: 24.0, fontWeight: FontWeight.w700))),
            SizedBox(
              height: 16.0,
            ),
            Image(image: AssetImage('assets/table.png')),
            SizedBox(height: 24.0),
            Align(
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xFF243de2)),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(" OK "),
              ),
            )
          ]),
        ),
        Positioned(
          top: 20,
          left: 0,
          right: 0,
          child: Icon(Icons.table_rows_outlined, size: 60),
          // child: CircleAvatar(
          //   backgroundColor: Colors.blueAccent,
          //   radius: 40,
          //   child: Icon(Icons.info_rounded,size: 60),
        ),
        //)
      ],
    );
  }
}
