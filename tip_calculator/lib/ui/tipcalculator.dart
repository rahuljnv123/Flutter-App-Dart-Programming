import 'package:flutter/material.dart';

class Billsplite extends StatefulWidget {
  @override
  _BillspliteState createState() => _BillspliteState();
}

class _BillspliteState extends State<Billsplite> {

  int _tipPercent = 0;
  int _perPerson = 0;
  double _billAmount = 0.0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.1),
        alignment: Alignment.center,
        color: Colors.white,
        child: ListView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(20.4),
          children: <Widget> [
            Container(
              width: 400,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.purple.shade100,
                borderRadius: BorderRadius.circular(20.5)
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("PER PERSON",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      fontStyle: FontStyle.italic
                    ),),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("${calculatetotalperson(_billAmount, _perPerson,_tipPercent)}",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,

                      ),),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top:20.4),
              padding: EdgeInsets.all(12.4),
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(
                  color: Colors.red.shade200,
                  style: BorderStyle.solid
                ),
                borderRadius: BorderRadius.circular(10.5)

              ),
              child: Column(
                children: <Widget>[
                  TextField(
                    keyboardType: TextInputType.numberWithOptions(decimal: true),
                    style: TextStyle(color: Colors.deepPurpleAccent),
                    decoration: InputDecoration(
                      prefixText: "Amount: "
                    ),
                    onChanged: (String value){
                      try{
                        _billAmount = double.parse(value);
                      }
                      catch(Exception){
                        _billAmount = 0.0;
                      }
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("split",style: TextStyle(
                        color: Colors.grey.shade700
                      ),),
                      Row(
                        children: <Widget>[
                          InkWell(
                            onTap: (){
                              setState(() {
                                if(_perPerson>1){
                                  _perPerson--;
                                }
                                else{
                                  //
                                }
                              });
                            },
                            child: Container(
                              width: 40,
                              height: 40,
                              margin: EdgeInsets.all(10.4),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7.0),
                                color: Colors.blueGrey.shade100

                              ),
                              child: Center(
                                child: Text("-",style: TextStyle(
                                  color: Colors.deepPurpleAccent,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 30.0,

                                ),
                                ),
                              ),
                            ),
                          ),
                          Text("$_perPerson",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17.4
                          ),),
                          InkWell(
                            onTap: (){
                              setState(() {
                                _perPerson++;
                              });
                            },
                            child: Container(
                              width: 40,
                              height: 40,
                              margin: EdgeInsets.all(10.4),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7.4),
                                color: Colors.blueGrey.shade100
                              ),
                              child: Center(
                                child: Text("+",style: TextStyle(
                                  fontSize: 30.2,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.deepPurpleAccent
                                ),),
                              ),
                            ),
                          )

                        ],
                      ),
                        ],
                      ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget> [
                      Text("Tip",style: TextStyle(
                        color: Colors.grey.shade700
                      ),),
                      Padding(
                        padding: const EdgeInsets.all(17.0),
                        child: Text("Rs:${calculatetotaltip(_billAmount, _perPerson, _tipPercent)}",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14
                        ),),
                      )

                    ],
                  ),
                  Column(
                    children: <Widget> [
                      Text("$_tipPercent%",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurpleAccent,
                        fontSize: 20.4
                      ),),
                      Slider(
                        min: 0,
                        max: 100,
                        activeColor: Colors.deepPurpleAccent,
                        inactiveColor: Colors.grey,
                       divisions: 10,
                      value: _tipPercent.toDouble(),
                          onChanged: (double newValue){
                             setState(() {
                               _tipPercent = newValue.round();
                             });
                          })
                    ],
                  )
                    ],
                  )
            ),],
              ),
            )

        );


  }
  calculatetotalperson(double billAmount,int splitBy,int tipPercent){
    var perPerson = (calculatetotaltip(billAmount, splitBy, tipPercent)+billAmount)/splitBy;
    return perPerson.toStringAsFixed(2);

  }
  calculatetotaltip(double billAmount,int splitby,int tippercentage){
    double totaltip = 0.0;
    if(billAmount<0 || billAmount==null || billAmount.toString().isEmpty){

    }
    else{
      totaltip = (billAmount + tippercentage)%100;
    }
    return totaltip;
  }
}
