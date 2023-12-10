import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_marker_popup/flutter_map_marker_popup.dart';
import 'package:latlong2/latlong.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:geolocator/geolocator.dart';

class MapLayout extends StatefulWidget {
  const MapLayout({super.key, required this.title});

  final String title;

  @override
  State<MapLayout> createState() => _MapLayoutState();
}

class _MapLayoutState extends State<MapLayout> {
  var controller = PopupController();

  void getLocation() async {
    await Geolocator.checkPermission();
    await Geolocator.requestPermission();

    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low);
    print('ss');
    print(position);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: FlutterMap(
        options: const MapOptions(
            initialCenter: LatLng(22.31655968880543, 39.10414052778789),
            initialZoom: 9,
            backgroundColor: Colors.transparent),
        children: [
          TileLayer(
            wmsOptions: WMSTileLayerOptions(
              baseUrl: 'http://196.218.90.94:8070/geoserver/Hijra/wms?',
              version: '1.1.0',
              layers: const ['Hijra:Points,Hijra:Polylines'],
            ),
          ),
          TileLayer(
            tileDisplay: const TileDisplay.instantaneous(opacity: 0.5),
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            subdomains: const ['a', 'b', 'c'],
          ),

          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 300.0,
              horizontal: 20.0,
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  width: 1,
                ),
                color: Colors.white,
              ),
              height: 200.0,
              width: 200.0,
              child: Column(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/pin-placeholder-green.svg',
                        semanticsLabel: 'My SVG Image',
                        height: 50,
                        width: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'المعالم',
                          style: TextStyle(color: Colors.black, fontSize: 20.0),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          'assets/house-c.svg',
                          semanticsLabel: 'My SVG Image',
                          height: 50,
                          width: 30,
                        ),
                        Text(
                          'المبيت',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        // Icon(
                        //   Icons.home,
                        //   color: Colors.brown,
                        //   size: 30.0,
                        // ),
                        // SvgPicture.asset(
                        //   'assets/images/pin-green.svg',
                        //   semanticsLabel: 'My SVG Image',
                        //   height: 50,
                        //   width: 30,
                        // ),
                        Image.asset(
                          'assets/green-line.png',
                          width: 50.0,
                          height: 30.0,
                        ),

                        Text(
                          'المسار',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                    onPressed: getLocation, child: Text('Get Location')),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Image.asset(
                    'assets/ather logo.png',
                    height: 100.0,
                    width: 100.0,
                  ),
                ],
              ),
            ],
          )

          // PopupMarkerLayer(
          //   options: PopupMarkerLayerOptions(
          //     popupController: controller,
          //     selectedMarkerBuilder: (context, marker) {
          //       controller.showPopupsOnlyFor([marker]);
          //       return const Icon(Icons.access_alarm);
          //     },
          //     markers: [
          //       const Marker(
          //           point: LatLng(24.26, 45.10),
          //           child: Icon(Icons.add)),
          //       Marker(
          //           point: const LatLng(24.266906, 45.107849),
          //           child:  InkWell(
          //                 child: const Icon(Icons.ac_unit),
          //                 onTap: () {
          //                   showDialog(
          //                       context: context,
          //                       builder: (context) => AlertDialog(
          //                             title: const Text("hello"),
          //                             content: Container(
          //                               child: const Text('body'),
          //                             ),
          //                           ));
          //                 },
          //               ))
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}
