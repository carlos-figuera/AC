//*****************************************
// Transfercia de Datos de los Inputs (DTI)
//      Centro de Costos / Cost Center
//      Sala de Ventas
//*****************************************
// Son los datos que envia el FrontEnd al BackEnd

import 'package:app_hazconta/app/data/models/articles/unit/unit.dto.dart';

class UnitDti {
  UnitDti({
    required this.id,
    required this.name,
    required this.value,
    required this.code,
    this.parent,
    required this.symbol,
    required this.isExpanded,
    required this.childrenMeasurementsUnit
  });

  int  id;
  String  name;
  String  value;
  String  symbol;
  String code;
  ParentUnit  ? parent;
  bool  isExpanded  ;

   List<UnitDto>  childrenMeasurementsUnit;
}