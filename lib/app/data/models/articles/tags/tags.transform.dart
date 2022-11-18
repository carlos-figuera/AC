

import 'package:app_hazconta/app/data/models/articles/tags/tags.dti.dart';
import 'package:app_hazconta/app/data/models/articles/tags/tags.dto.dart';


class TagsTransformDtoDti {
  TagsDti transform({
    required TagsDto dto,
    required TagsDti dti,
  }) {
    dti.id = dto.id;
    dti.name = dto.name;

    return dti;
  }
}
