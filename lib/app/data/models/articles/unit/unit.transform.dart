import 'package:app_hazconta/app/data/models/articles/unit/unit.dti.dart';
import 'package:app_hazconta/app/data/models/articles/unit/unit.dto.dart';

class UnitTransformDtoDti {
  UnitDti transform({
    required UnitDto dto,
    required UnitDti dti,
  }) {
    dti.id = dto.id;
    dti.name = dto.name;
    dti.code = dto.code;
    dti.value = dto.value.toString();
    dti.isExpanded = dto.isExpanded;
    dti.childrenMeasurementsUnit = dto.childrenMeasurementsUnit;
    dti.symbol = dto.symbol;
    dti.parent = dto.parent;

    return dti;
  }
}
