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

    ButtonStyle buttonStyle = ElevatedButton.styleFrom(

      padding: EdgeInsets.all(15),
      backgroundColor: Colors.deepPurpleAccent,
      foregroundColor: Colors.black,
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(40)),
      )


    );

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

      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(onPressed: (){MySnackBar("Its a Textbutton", context);}, child: Text("TEXT BUTTON"), style: buttonStyle,),
          ElevatedButton(onPressed: (){MySnackBar("Its a Elevatedbutton", context);}, child: Text("ELEVATED BUTTON"), style: buttonStyle,),
          OutlinedButton(onPressed: (){MySnackBar("Its a Outlinedbutton", context);}, child: Text("OUTLINED BUTTON"), style: buttonStyle,)
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
      
      /*
      body: Center(
      child: //Text("Lamborgini Cars"),
        Image.network("https://www.lamborghini.com/sites/it-en/files/DAM/lamborghini/facelift_2019/model_detail/few_off/sian-fkp-37/2022/06_20/gallery/sian_05_m.jpg"),
      ),
       
   /*> Works with body Part and include a picture in box section
    
      body: Container(
        
        height: 200,
        width: 300,
        margin: EdgeInsets.fromLTRB(150, 50, 100, 100),
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: Colors.amber,
          border: Border.all(
              color: Colors.black,
              width: 6.0,
              style: BorderStyle.solid
          ),
          borderRadius: BorderRadius.circular(20)
        ),
        child: Image.network("https://www.lamborghini.com/sites/it-en/files/DAM/lamborghini/facelift_2019/model_detail/few_off/sian-fkp-37/2022/06_20/gallery/sian_05_m.jpg"),
      ),




      
      
      // Row Container works in this Section .. 
      
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(

            height: 100,
            width: 100,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.amber,
                border: Border.all(
                  width: 5,
                  color: Colors.redAccent,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaxTXrwam02kzKKNDabGkCkRRdYs_siK4XHQ&usqp=CAU"),
          ),
          Container(
              height: 100,
              width: 100,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.amber,
                border: Border.all(
                  width: 5,
                  color: Colors.redAccent,
                ),
                borderRadius: BorderRadius.circular(10),

          ),
            child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaxTXrwam02kzKKNDabGkCkRRdYs_siK4XHQ&usqp=CAU"),
          ),

          Container(

              height: 100,
              width: 100,
                  margin: EdgeInsets.all(10),
                 padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.amber,
                    border: Border.all(
                       width: 5,
                        color: Colors.redAccent,
                    ),
                 borderRadius: BorderRadius.circular(10),

          ),
            child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaxTXrwam02kzKKNDabGkCkRRdYs_siK4XHQ&usqp=CAU"),
          ),
        ],
      ),
      
      
      */

       */
      
      
      
    );
  }
}
