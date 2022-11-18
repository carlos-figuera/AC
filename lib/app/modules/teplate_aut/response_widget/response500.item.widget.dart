import 'package:app_hazconta/app/global_widgets/rounded_button.dart';
import 'package:app_hazconta/app/theme/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Response500ItemWidget extends StatelessWidget {
  final int estadoConexion;
  final int typeResponse;
  final Function()? getData;
  final Function()? regresar;
  final String pathImage;
  final String textinfo;
  final String buttonTitle;

  const Response500ItemWidget({
    Key? key,
    required this.estadoConexion,
    required this.typeResponse,
    required this.getData,
    required this.pathImage,
    required this.buttonTitle,
    required this.textinfo,
    required this.regresar,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Visibility(
        visible:  estadoConexion == typeResponse? true : false,
        child: Container(
          margin: EdgeInsets.only(top: 1),
          height: size.height * 0.7,
          width: size.width * 1,
          child:Column(
            children: [
              SvgPicture.asset(
                pathImage,
                height: size.height * 0.4,
                fit: BoxFit.fill,
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: Text(
                    textinfo,
                    textAlign: TextAlign.center, style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600)),
              ),
             Row(children: [
               SizedBox( width:5 ,),
               Expanded(child: RoundedButton(
                 text: "Regresar",
                 color: AppColors.kPrimaryColor,
                 textColor: Colors.white,
                 padin: 17.0,
                 press:regresar,

               ), flex:2 , ),
               SizedBox( width:5 ,),
               Expanded(
                 child: RoundedButton(
                 text: buttonTitle,
                 color: AppColors.kPrimaryColor,
                 textColor: Colors.white,
                 padin: 17.0,
                 press: getData,
               ),flex:2 ,  ),

               SizedBox( width:5 ,)
             ]),
              SizedBox(
                height: 5,
              )
            ],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
          ),
        ),
      ),
    );
  }
}
