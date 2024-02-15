// import 'package:flutter/material.dart';
// import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
// import 'package:permission_handler/permission_handler.dart';



import 'package:flutter/material.dart';
import 'package:project/ble/ble_screen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BleScreen(),
    );
  }
}
// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   late BluetoothState _bluetoothState = BluetoothState.UNKNOWN;
//   late FlutterBluetoothSerial _bluetooth = FlutterBluetoothSerial.instance;
//   List<BluetoothDevice> _devices = [];
//   BluetoothDevice? _device;
//   bool _connected = false;

//   @override
//   void initState() {
//     super.initState();
//     _checkPermissions();
//     _bluetooth.state.then((state) {
//       setState(() {
//         _bluetoothState = state;
//       });
//     });
//     _getBondedDevices();
//   }

//   Future<void> _checkPermissions() async {
//     Map<Permission, PermissionStatus> statuses = await [
//       Permission.bluetooth,
//       Permission.bluetoothScan,
//       Permission.bluetoothConnect,
//     ].request();
//     if (statuses[Permission.bluetooth] != PermissionStatus.granted ||
//         statuses[Permission.bluetoothScan] != PermissionStatus.granted ||
//         statuses[Permission.bluetoothConnect] != PermissionStatus.granted) {
//       // Handle permission denied
//       print('Bluetooth permissions denied');
//     }
//   }

//   Future<void> _getBondedDevices() async {
//     List<BluetoothDevice> bondedDevices = [];
//     try {
//       bondedDevices = await _bluetooth.getBondedDevices();
//     } catch (e) {
//       print('Error getting bonded devices: $e');
//     }
//     if (!mounted) return;
//     setState(() {
//       _devices = bondedDevices;
//     });
//   }
//   void _sendData() {
//   if (_connected) {
//     // Replace "test" with the data you want to send
//     // ignore: deprecated_member_use
//     FlutterBluetoothSerial.instance.write("test").then((value) {
//       print('Data sent successfully');
//     }).catchError((error) {
//       print('Error sending data: $error');
//     });
//   } else {
//     print('Not connected to a device');
//   }
// }
//  void _sendData1() {
//   if (_connected) {
//     // Replace "test" with the data you want to send
//     // ignore: deprecated_member_use
//     FlutterBluetoothSerial.instance.write("kinan").then((value) {
//       print('Data sent successfully');
//     }).catchError((error) {
//       print('Error sending data: $error');
//     });
//   } else {
//     print('Not connected to a device');
//   }
// }
//  void _sendData2() {
//   if (_connected) {
//     // Replace "test" with the data you want to send
//     // ignore: deprecated_member_use
//     FlutterBluetoothSerial.instance.write("hmade").then((value) {
//       print('Data sent successfully');
//     }).catchError((error) {
//       print('Error sending data: $error');
//     });
//   } else {
//     print('Not connected to a device');
//   }
// }
//  void _sendData3() {
//   if (_connected) {
//     // Replace "test" with the data you want to send
//     // ignore: deprecated_member_use
//     FlutterBluetoothSerial.instance.write("kinan").then((value) {
//       print('Data sent successfully');
//     }).catchError((error) {
//       print('Error sending data: $error');
//     });
//   } else {
//     print('Not connected to a device');
//   }
// }
//  void _sendData4() {
//   if (_connected) {
//     // Replace "test" with the data you want to send
//     // ignore: deprecated_member_use
//     FlutterBluetoothSerial.instance.write("kinan").then((value) {
//       print('Data sent successfully');
//     }).catchError((error) {
//       print('Error sending data: $error');
//     });
//   } else {
//     print('Not connected to a device');
//   }
// }
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Bluetooth Connection'),
//         ),
//         body: Container(
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: ListView(
//               children: <Widget>[
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: <Widget>[
//                     SizedBox(
//                       width: 10,
//                     ),
//                     Text(
//                       'Device:',
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     SizedBox(
//                       width: 30,
//                     ),
//                     Expanded(
//                       child: DropdownButton(
//                         items: _getDeviceItems(),
//                         onChanged: (BluetoothDevice? value) =>
//                             setState(() => _device = value),
//                         value: _device,
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: <Widget>[
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(primary: Colors.brown),
//                       onPressed: () {
//                         _getBondedDevices();
//                       },
//                       child: Text(
//                         'Refresh',
//                         style: TextStyle(color: Colors.white),
//                       ),
//                     ),
//                     SizedBox(
//                       width: 20,
//                     ),
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                           primary: _connected ? Colors.red : Colors.green),
//                       onPressed: _connected ? _disconnect : _connect,
//                       child: Text(
//                         _connected ? 'Disconnect' : 'Connect',
//                         style: TextStyle(color: Colors.white),
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 ElevatedButton(
//                   onPressed: _startScan,
//                   child: Text('Start Scan'),
//                 ),
//                 ElevatedButton(onPressed: (){
// _sendData();
//                 }, child: Text('test')),
//                  ElevatedButton(onPressed: (){
// _sendData1();
//                 }, child: Text('kinan')),
//                  ElevatedButton(onPressed: (){
// _sendData2();
//                 }, child: Text('hmade')),
//                  ElevatedButton(onPressed: (){
// _sendData3();
//                 }, child: Text('kinan')),
//                  ElevatedButton(onPressed: (){
// _sendData4();
//                 }, child: Text('test')),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   List<DropdownMenuItem<BluetoothDevice>> _getDeviceItems() {
//     List<DropdownMenuItem<BluetoothDevice>> items = [];
//     if (_devices.isEmpty) {
//       items.add(DropdownMenuItem(
//         child: Text('NONE'),
//       ));
//     } else {
//       _devices.forEach((device) {
//         items.add(DropdownMenuItem(
//           child: Text(device.name ?? device.address),
//           value: device,
//         ));
//       });
//     }
//     return items;
//   }

//   void _connect() {
//     if (_device != null) {
//       FlutterBluetoothSerial.instance
//           .connect(_device!)
//           .then((value) {
//         setState(() {
//           _connected = true;
//         });
//         print('Connected to device: ${_device!.name}');
//         // Perform further actions after successful connection
//       }).catchError((error) {
//         print('Error connecting to device: $error');
//       });
//     } else {
//       print('No device selected.');
//     }
//   }

//   void _disconnect() {
//     FlutterBluetoothSerial.instance.disconnect();
//     setState(() {
//       _connected = false;
//     });
//   }

//   void _startScan() async {
//     try {
//       // Start scanning for Bluetooth devices
//       _bluetooth.startDiscovery().listen((device) {
//         setState(() {
//           // Update the list of devices
//           _devices.add(device.device);
//         });
//       });
//     } catch (e) {
//       print('Error starting scan: $e');
//     }
//   }
// }

