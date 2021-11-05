import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

String ref1 =
    "       dsfsd;fmdlgsmdf; masdfsfsd fdsf sfsdfsd'fsdmg;kfnhspd'gndmsfkdlgn;sfkgl;sdfnsgjsebrgnskfdbgskjfsgnf; g   glkfnglerngl rglerglermg;erm;gere eger gergergerger gerger gergerger gergergergeffsdfwffergerge";
String ref2 =
    "      wer wervfgerg on tregergegergergergergegerhsgrtgslen gtrgn;erolh wtgn;eg'mfpwao'fmaergkerngergmergklmerg;ration in kidney twgfsergsfbsgfbsgbsbsharmafgsrgaefgsfgegsgsf.";

class CustomDialog extends StatelessWidget {
  final String title, description;

  //final Image image;

  const CustomDialog({this.title, this.description});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.only(top: 50),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }

  dialogContent(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
            // alignment: Alignment.center,
            height: 2000,
            padding: const EdgeInsets.only(
              top: 20,
              bottom: 16,
              left: 16,
              right: 16,
            ),
            margin: const EdgeInsets.only(
              top: 16,
            ),
            decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 15.0,
                    offset: Offset(0.0, 10.0),
                  )
                ]),
            child: SingleChildScrollView(
              child: Align(
                alignment: Alignment.center,
                child:
                    Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                  const Icon(
                    Icons.info_rounded,
                    size: 70,
                    color: Color(0xFF243de2),
                  ),
                  Text("\n", style: TextStyle(fontSize: 7.0)),
                  Text(title,
                      style: TextStyle(
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF243de2))),
                  Text("\n", style: const TextStyle(fontSize: 10.0)),
                  Text(
                    description,
                    style: TextStyle(fontSize: 16.0),
                    //textAlign: TextAlign.justify,
                  ),
                  // child: ElevatedButton(
                  //   onPressed: () {
                  //     Navigator.pop(context);
                  //   },
                  //   child: Text(" OK "),
                  // ),
                ]),
              ),
            )),
      ],
    );
  }
}

class CustomDialog3 extends StatelessWidget {
  final String title, description, description1;

  //final Image image;

  const CustomDialog3({this.title, this.description, this.description1});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.only(top: 180),
      // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }

  dialogContent(BuildContext context) {
    return Stack(
      children: <Widget>[
        //SingleChildScrollView(
        Container(
          height: MediaQuery.of(context).size.height * 0.95,
          padding: const EdgeInsets.only(
            top: 40,
            bottom: 16,
            left: 16,
            right: 16,
          ),
          // alignment: Alignment.bottomCenter,
          decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 20.0,
                  offset: Offset(0.0, 10.0),
                )
              ]),
          //height: 1000,
          //backgroundColor: Colors.transparent,
          //child: Center(
          child: SingleChildScrollView(
            child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
              Text(title,
                  style: TextStyle(
                    fontSize: 26.0,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF243de2),
                  )),
              const SizedBox(
                height: 16.0,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text("Antignac et al",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent)),
              ),
              Text(description,
                  style: TextStyle(
                    fontSize: 16.0,
                  )),
              Align(
                alignment: Alignment.topLeft,
                child: Text("Reference : ",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(ref1,
                      style: TextStyle(
                        fontSize: 16.0,
                      ))),
              const SizedBox(
                height: 24.0,
              ),
              Text("F = 0.137",
                  style:
                      TextStyle(fontSize: 16.0, fontWeight: FontWeight.w700)),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text("\nBauer et al",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent)),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text("Reference : ",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(description1,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 16.0,
                    )),
              ),
              const SizedBox(height: 24.0),
              Text("F = 0.25",
                  style:
                      TextStyle(fontSize: 16.0, fontWeight: FontWeight.w700)),
              Align(
                alignment: Alignment.topRight,
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
                  child: const Text(" OK "),
                ),
              )
            ]),
          ),
        ),
        //),
        //),
      ],
    );
  }
}

class CustomDialog2 extends StatelessWidget {
  final String title, description, description1, description2;

  //final Image image;

  const CustomDialog2(
      {this.title, this.description, this.description1, this.description2});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.only(top: 50),
      // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }

  dialogContent(BuildContext context) {
    return Stack(
      children: <Widget>[
        //SingleChildScrollView(
        Container(
          height: MediaQuery.of(context).size.height * 0.95,
          padding: const EdgeInsets.only(
            top: 40,
            bottom: 16,
            left: 16,
            right: 16,
          ),
          // alignment: Alignment.bottomCenter,
          decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 20.0,
                  offset: Offset(0.0, 10.0),
                )
              ]),
          //height: 1000,
          //backgroundColor: Colors.transparent,
          //child: Center(
          child: SingleChildScrollView(
            child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF243de2),
                  ),
                  children: [
                    const TextSpan(
                      text: "fdV",
                    ),
                    WidgetSpan(
                      child: Transform.translate(
                        offset: const Offset(0.0, 6.0),
                        child: Text("d",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF243de2),
                            )),
                      ),
                    ),
                    TextSpan(
                        text: ' Model',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF243de2),
                        )
                        //     style: TextStyle(
                        //         fontSize: 16,
                        //         fontWeight: FontWeight.w600,
                        //         color: Color(0xFF243de2),
                        // )
                        ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text("Antignac et al",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent)),
              ),
              Text(description,
                  style: TextStyle(
                    fontSize: 16.0,
                  )),
              Align(
                alignment: Alignment.topLeft,
                child: Text("Reference : ",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(ref1,
                          style: TextStyle(
                            fontSize: 16.0,
                          )))),
              const SizedBox(height: 24.0),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                  children: [
                    const TextSpan(
                      text: "V",
                    ),
                    WidgetSpan(
                      child: Transform.translate(
                        offset: const Offset(0.0, 6.0),
                        child: Text(
                          "d",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                        ),
                      ),
                    ),
                    TextSpan(
                      text: ' = 1.49 L/kg',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),

                      //     style: TextStyle(
                      //         fontSize: 16,
                      //         fontWeight: FontWeight.w600,
                      //         color: Color(0xFF243de2),
                      // )
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text("\nGolubovic et al",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent)),
              ),
              Text(description1, style: TextStyle(fontSize: 16.0)),
              Align(
                alignment: Alignment.topLeft,
                child: Text("Reference : ",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(ref2,
                      style: TextStyle(
                        fontSize: 16.0,
                      ))),
              SizedBox(height: 24.0),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: "V",
                    ),
                    WidgetSpan(
                      child: Transform.translate(
                        offset: const Offset(0, 6.0),
                        child: Text(
                          "d",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                        ),
                      ),
                    ),
                    TextSpan(
                      text: ' = 0.68 L/kg',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                      //     style: TextStyle(
                      //         fontSize: 16,
                      //         fontWeight: FontWeight.w600,
                      //         color: Color(0xFF243de2),
                      // )
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text("\nBauer et al",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent)),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text("Reference : ",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(description2,
                      style: TextStyle(fontSize: 16.0, color: Colors.black))),
              const SizedBox(height: 24.0),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: "V",
                    ),
                    WidgetSpan(
                      child: Transform.translate(
                        offset: const Offset(0, 6.0),
                        child: Text("d",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Colors.black)),
                      ),
                    ),
                    TextSpan(
                      text: ' = 1 L/kg',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    )
                    //     style: TextStyle(
                    //         fontSize: 16,
                    //         fontWeight: FontWeight.w600,
                    //         color: Color(0xFF243de2),
                    // )
                    ,
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topRight,
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
        ),
        //),
        //),
      ],
    );
  }
}
