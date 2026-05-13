import 'package:flutter/material.dart';

class input_txt extends StatelessWidget {
  const input_txt({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneControler = TextEditingController();
    TextEditingController passControler = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('Input text page'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),

      body: Column(
        children: [

          SizedBox(height: 20,),
          Image.network('https://cdn.pixabay.com/photo/2021/06/15/12/51/facebook-6338509_1280.png', height: 100,),
          Image.asset('asset/logo.png'), // fot this
          // -> flutter clean ,, then -> flutter pub dev
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: phoneControler,
              keyboardType: TextInputType.phone,
              maxLength: 11,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.phone),
                suffixIcon: Icon(Icons.info),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.orange)
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.green)
                ),
                filled: true,
                // fillColor: Colors.blue,
                // contentPadding: EdgeInsets.all(20), // all around padding
                contentPadding: EdgeInsets.only(left: 20, right: 20),
                hintText: '017XXXXXXXX',
                hintStyle: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 20,
                ),
                helperText: 'Enter Password',
                helperStyle: TextStyle(
                  color: Colors.greenAccent,
                ),
                labelText: 'Phone number',
                labelStyle: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                ),



              ),
            ),
          ),
          //------------------------ password -------------------
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: passControler,
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.remove_red_eye),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.orange)
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.green)
                ),
                filled: true,
                // fillColor: Colors.blue,
                // contentPadding: EdgeInsets.all(20), // all around padding
                contentPadding: EdgeInsets.only(left: 20, right: 20),
                hintText: 'Enter Password',
                hintStyle: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 20,
                ),
                labelText: 'Password',
                labelStyle: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                ),



              ),
            ),
          ),

          SizedBox(

            width: double.infinity,

            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                ),
                onPressed: (){
                  print(
                    phoneControler.text
                  );
                  print(
                    passControler.text
                  );
                  if(passControler.text.length <8)
                    {
                      print('Password must be 8 car');
                    }
                  else {
                    print("okay");
                    phoneControler.clear();
                    passControler.clear();
                  }

                }, child: Text('Submit')),

          )
        ],
      ),

    );
  }
}
