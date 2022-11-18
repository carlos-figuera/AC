
import 'package:app_hazconta/app/global_widgets/AppBarSelect2.dart';
import 'package:app_hazconta/app/modules/teplate_aut/select/selectEntity_controller.dart';
import 'package:app_hazconta/app/theme/appTextStyles.dart';
import 'package:app_hazconta/app/theme/appColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateTemplatePage extends StatefulWidget {
  final String titleHeader;
  final String ruta;
  final void Function()  save;
  final Widget listWidget;
  final bool visibleButtonBar  ;
  CreateTemplatePage({
    Key? key,
    required this.titleHeader,
    required this.ruta,
    required this.listWidget,
    required this.save,
      this.visibleButtonBar=true
  }) : super(key: key);

  @override
  _CreateTemplatePageState createState() => _CreateTemplatePageState();
}

class _CreateTemplatePageState extends State<CreateTemplatePage> {
  @override
  Widget build(BuildContext context) {

    return GetBuilder<SelectEntityController>(
      init: SelectEntityController(),
      id: 'create_template',
      builder: (_) => Scaffold(
        appBar: AppBarSelect2(title: widget.titleHeader),
        body: SafeArea(
          child: Column(
            children: [

              Expanded(
                child: Container(
                  child: widget.listWidget,
                ),
              ),
              // BottomNav(),
            ],
          ),
        ),

        bottomNavigationBar: BottomAppBar(

          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          child:widget.visibleButtonBar? Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: (){
                        Get.offAllNamed( widget.ruta);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Icon(Icons.arrow_back,color: AppColors.kPrimaryColor), Text('Regresar',style:AppTextStyles.texButonBar)],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        widget.save();
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Icon(Icons.save,color: AppColors.kPrimaryColor), Text('Guardar',style:AppTextStyles.texButonBar ,)],
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ) :SizedBox(),

        ),

      ),
    );
  }
}
