import 'package:app_hazconta/app/theme/Responsive.dart';
import 'package:app_hazconta/app/theme/appColors.dart';

import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  var kTextStyleWithFont = GoogleFonts.montserrat();

  // Estilos de los cards  en la listas
 static TextStyle titleCardPrimary= TextStyle(color:AppColors.kPrimaryColor,fontSize:Responsive.of().ip(por: 2.2),fontWeight:FontWeight.bold);
  static  TextStyle titleCardBlack= TextStyle(color:AppColors.kPrimaryColor,fontSize:Responsive.of().ip(por: 2.1),fontWeight:FontWeight.bold);
  static  TextStyle titleNoImage= TextStyle(color:AppColors.kAnaranjadoColor,fontSize:Responsive.of().ip(por: 0.9),fontWeight:FontWeight.bold);
  static  TextStyle subtitleCard= TextStyle(color:AppColors.kTextColorBlack,fontSize:Responsive.of().ip(por: 1.9),fontWeight:FontWeight.w400);
  static  TextStyle subtitleCardOrange= TextStyle(color:AppColors.kAnaranjadoColor,fontSize:Responsive.of().ip(por: 2.1),fontWeight:FontWeight.w700);
  static  TextStyle textDrop= TextStyle(color:AppColors.kAfirmaColor,fontSize:Responsive.of().ip(por: 1.9),fontWeight:FontWeight.w900);
  //Texto blanco sobre fondo azul
  static  TextStyle titleCicularContact= TextStyle(color:AppColors.kTextColorwhite,fontSize:Responsive.of().ip(por: 2.1),fontWeight:FontWeight.w400);

  //estilo para los botones de la barra inferior
  static  TextStyle texButonBar= TextStyle(color:AppColors.kPrimaryColor,fontSize:Responsive.of().ip(por: 2.2),fontWeight:FontWeight.w400);
  //estilo para los botones de la barra inferior
  static  TextStyle texButonBarOrange= TextStyle(color:AppColors.kAnaranjadoColor,fontSize:Responsive.of().ip(por: 2.2),fontWeight:FontWeight.w400);

  //titulo que se  muestra como descripcion de una pantalla
  static  TextStyle subTitlePage= TextStyle(color:AppColors.kPrimaryColor,fontSize:Responsive.of().ip(por: 2.3),fontWeight:FontWeight.w400);
  static  TextStyle titlePage= TextStyle(color:AppColors.kPrimaryColor,fontSize:Responsive.of().ip(por: 2.2),fontWeight:FontWeight.bold);
  static  TextStyle titlebottomSheetLarge= TextStyle(color:AppColors.kPrimaryColor,fontSize:Responsive.of().ip(por: 2.5),fontWeight:FontWeight.bold,);
  static  TextStyle titlebottomSheet= TextStyle(color:AppColors.kPrimaryColor,fontSize:Responsive.of().ip(por: 2.5),fontWeight:FontWeight.bold,);
  static  TextStyle titlebottomSheetOrange= TextStyle(color:AppColors.kAnaranjadoColor,fontSize:Responsive.of().ip(por: 2.5),fontWeight:FontWeight.bold,);
  static  TextStyle subTitleBottomSheet= TextStyle(color:AppColors.kTextColorBlack,fontSize:Responsive.of().ip(por:1.8),fontWeight:FontWeight.w400,fontStyle: FontStyle.italic,   );
  static  TextStyle subTitleBottomSheetOrange= TextStyle(color:AppColors.kAnaranjadoColor,fontSize:Responsive.of().ip(por: 2.2),fontWeight:FontWeight.bold,);



  // titulo para los botones en general
  static  TextStyle titleButton= TextStyle(color:AppColors.kPrimaryColor,fontSize:Responsive.of().ip(por: 2.4), fontWeight: FontWeight.w800,);



  //   estilo para input de cantidad en compras y ventas
  static  TextStyle inputSalesAndpurchase= TextStyle(color:AppColors.kAinactiColor,fontSize:Responsive.of().ip(por: 2.2), fontWeight: FontWeight.w800,);
  //   estilo para input de cantidad en compras y ventas
  static  TextStyle totalsale= TextStyle(color:AppColors.kPrimaryColor,fontSize:Responsive.of().ip(por: 2.4), fontWeight: FontWeight.w900,);




  //Home
  static TextStyle titleCardHome= TextStyle(color:AppColors.kPrimaryColor,fontSize:Responsive.of().ip(por: 2.2),fontWeight:FontWeight.bold);
  static TextStyle subTitleCardHome= TextStyle(color:AppColors.kTextColorBlack,fontSize:Responsive.of().ip(por: 1.8),fontWeight:FontWeight.normal);
  static TextStyle amountCardHome= TextStyle(color:AppColors.kPrimaryColor,fontSize:Responsive.of().ip(por:2.8),fontWeight:FontWeight.bold);





// seccion detalles de factura

 static TextStyle testDetail= TextStyle(color:AppColors.kAinactiColor,fontSize:Responsive.of().ip(por:2),fontWeight:FontWeight.bold  );

// seccion metodos de pago

 static TextStyle textNamePayments= TextStyle(color:AppColors.kTextColorBlack,fontSize:Responsive.of().ip(por:2),fontWeight:FontWeight.w700  );
 static TextStyle simbolPayments= TextStyle(color:AppColors.kTextColorBlack,fontSize:Responsive.of().ip(por:2.1),fontWeight:FontWeight.bold  );
 static TextStyle asigPayments= TextStyle(color:AppColors.kAfirmaColor,fontSize:Responsive.of().ip(por:2.1),fontWeight:FontWeight.bold  );


}
