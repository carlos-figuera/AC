

import 'reservation.dto.dart';
import 'reservation.search.dti.dart';


class ReservationTransformDtoDti {
  ReservationDti transform({
    required ReservationDto dto,
    required ReservationDti dti,
  }) {
    dti.id = dto.id;
    dti.nameUser = dto.nameUser;
    dti.typeCancha = dto.typeCancha;
    dti.date = dto.date;
    dti.probavilityRain = dto.probavilityRain;

    return dti;
  }
}
