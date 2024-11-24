import 'package:flutter/material.dart';
import 'package:insuranceapp/chatbot/chatbotConstants.dart';

class MapService extends StatefulWidget {
  const MapService({super.key});

  @override
  State<MapService> createState() => _MapServiceState();
}

class _MapServiceState extends State<MapService> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ambulance Service'),
        backgroundColor: kAppBarColor,
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: kAppBarColor.withOpacity(.3),
          image: DecorationImage(
              image: AssetImage('assets/images/mapBG2.PNG'),
              fit: BoxFit.fitHeight),
        ),
        child: Expanded(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.6),
                        spreadRadius: 2,
                        blurRadius: 4,
                        offset: Offset(1, 4),
                      ),
                    ],
                    color: Color.fromARGB(255, 108, 255, 230).withOpacity(.7),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  child: const Text(
                    'Thanks for your request, Our service is on the way!',
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87),
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll<Color>(Colors.lightBlue),
                    foregroundColor:
                        MaterialStatePropertyAll<Color>(Colors.white),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Return Home',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
