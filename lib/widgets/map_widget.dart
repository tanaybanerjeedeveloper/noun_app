import 'package:flutter/material.dart';
import 'package:mapmyindia_gl/mapmyindia_gl.dart';
import 'package:location/location.dart';
import 'package:flutter/foundation.dart';

class MapWidget extends StatefulWidget {
  //MyFlexibleAppBar({Key? key}) : super(key: key);

  @override
  State<MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  late MapmyIndiaMapController mapController;
  static final CameraPosition _kInitialPosition = const CameraPosition(
    target: LatLng(28.551087, 77.257373),
    zoom: 14.0,
  );
  static const String ACCESS_TOKEN = "c9404f6161e639aaf868397cf5e89f38";
  static const String REST_API_KEY = "c9404f6161e639aaf868397cf5e89f38";
  static const String ATLAS_CLIENT_ID =
      "33OkryzDZsJ3Eeti8B8qH4oK3KqUEk1IpW5GUnHfkV85sN2QGGT5s6tUkippv26iJAbbIa8z3MxYcr6eUmzSgIedCe5fqB4R";
  static const String ATLAS_CLIENT_SECRET =
      "lrFxI-iSEg-LTbCK1u10b3oQLmLXU31xS7NbhdglEIqb0LVY2d1VkPTekp2l0xh6V0OQMIjRu1Zkd-l9Kz-mc1NUGv528Y_1eXawuT9WUOc=";

  void setPermission() async {
    if (!kIsWeb) {
      final location = Location();
      final hasPermissions = await location.hasPermission();
      if (hasPermissions != PermissionStatus.granted) {
        await location.requestPermission();
      }
    }
  }

  @override
  void initState() {
    super.initState();

    MapmyIndiaAccountManager.setMapSDKKey(ACCESS_TOKEN);
    MapmyIndiaAccountManager.setRestAPIKey(REST_API_KEY);
    MapmyIndiaAccountManager.setAtlasClientId(ATLAS_CLIENT_ID);
    MapmyIndiaAccountManager.setAtlasClientSecret(ATLAS_CLIENT_SECRET);
    // setState(() {
    //   selectedFeatureType = FeatureType.MAP_EVENT;
    // });
    setPermission();
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Container(
      height: mediaQuery.height * 0.6,
      child: MapmyIndiaMap(
        initialCameraPosition: _kInitialPosition,
        onMapCreated: (map) {
          mapController = map;
          mapController.getMapmyIndiaStyle();
        },
        onMapClick: (point, latlng) => {
          print(latlng.toString()),
          // Fluttertoast.showToast(msg: latlng.toString(), toastLength: Toast.LENGTH_LONG, gravity: ToastGravity.BOTTOM)
        },
      ),
    );
  }
}
