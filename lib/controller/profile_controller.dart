import 'package:get/get.dart';
import 'package:whatsupuiclone/shared/infoList.dart';

import '../models/info_model.dart';

class ProfileController extends GetxController {
  Info? profileInfo ;
  RxInt friendIndex = RxInt(-1);

  fetchInfo(){
    profileInfo=Info.fromJson(info);
    return profileInfo?.profile;
  }
  @override
  void onInit() {
    super.onInit();
    fetchInfo();
  }

}