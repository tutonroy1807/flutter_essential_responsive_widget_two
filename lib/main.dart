import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     // theme: ThemeData(primarySwatch: Colors.red),
      theme: ThemeData(primarySwatch: Colors.amber),
      debugShowCheckedModeBanner: false,
      home: Mypage(),
    );
  }
}

class Mypage extends StatelessWidget {
  const Mypage({Key? key}) : super(key: key);

  MySnackBar(message,context){
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Haiyer_Apps->"),
        toolbarHeight: 70,
        titleSpacing: 30,
        actions: [
          IconButton(onPressed: (){
              MySnackBar("Click A Photo", context);
          }, icon: Icon(Icons.camera_enhance_rounded),),
          IconButton(onPressed: (){
            MySnackBar("serach anything", context);
          }, icon: Icon(Icons.search),),
          IconButton(onPressed: (){
            MySnackBar("add a call", context);
          }, icon: Icon(Icons.add_call),),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 30,

        child: Icon(Icons.add),
        onPressed: (){
          MySnackBar("Add Anything", context);
        }
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ("Home")),
          BottomNavigationBarItem(icon: Icon(Icons.account_box), label: ("Account")),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: ("Setting")),
              ],
          onTap: (int index){
               if(index == 0){
                    MySnackBar("Its Home button", context);
               }

               if(index == 0){
                     MySnackBar("Its Home button", context);
                  }
               if(index == 0){
                    MySnackBar("Its Home button", context);
                  }
          }


      ),

      body: Center(
      child: //Text("Lamborgini Cars"),
        Image.network("https://www.lamborghini.com/sites/it-en/files/DAM/lamborghini/facelift_2019/model_detail/few_off/sian-fkp-37/2022/06_20/gallery/sian_05_m.jpg"),
      ),


    );
  }
}
