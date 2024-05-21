import 'package:flutter/material.dart';
import 'package:torch_controller/torch_controller.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    // TODO: implement initState
    TorchController().initialize();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final torchController = TorchController();
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("HSN Torch",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 32),),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            torchController.toggle();
          },
          child: Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.0),
            ),
            child: Image.asset("Assets/Images/torch.jpg",fit: BoxFit.fill,)
          ),
        ),
      ),
    );
  }
}
