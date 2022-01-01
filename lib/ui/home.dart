import "package:flutter/material.dart";

class BizCard extends StatelessWidget {
  const BizCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BizCard"),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter
          ,
          children: [
            _getCard(),
            _getAvatar()
          ],
        ),
      ),
    );
  }
 Container  _getCard() {
    return Container(
      width: 350,
      height: 200,
      margin: const EdgeInsets.all(50),
      decoration: BoxDecoration(
        color: Colors.lightGreen,
        borderRadius: BorderRadius.circular(14.5)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
            const Text("Asaduallah Khan",style:  TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),),
          const Text("Muhammad Younus"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.person_outline),
              Text("T: @Axadk15")
            ],
          )
        ],
      ),
    );
 }

  Container _getAvatar() {
    return Container(
      width: 100,
        height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(50.0)),
        border: Border.all(color:Colors.redAccent , width: 1.2),
        image: const DecorationImage(image: NetworkImage("https://picsum.photos/300/300"),fit: BoxFit.cover)

      ),
    );
  }

}

