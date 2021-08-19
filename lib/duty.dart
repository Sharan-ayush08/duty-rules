import 'package:flutter/material.dart';

class ViewDuty extends StatefulWidget {
  const ViewDuty({Key? key}) : super(key: key);

  @override
  _ViewDutyState createState() => _ViewDutyState();
}

class _ViewDutyState extends State<ViewDuty> {
  String? chooseValue;
  String? chooseValue2;
  String? chooseValue3;
  String? chooseValue4;

  List<String> listitem = [
    'Option 1',
    'Option 2',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Choose Duty"),
      ),
      body: SizedBox(
        height: 400.0,
        child: Card(
          elevation: 5,
          child: Container(
            child: Column(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          hintText: 'Rule Name'),
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Duty Name",
                          style: TextStyle(
                            fontSize: 28.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 16, right: 16),
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            border: Border.all(color: Colors.grey, width: 1),
                            borderRadius: BorderRadius.circular(15)),
                        child: DropdownButton(
                          dropdownColor: Colors.grey[300],
                          icon: Icon(Icons.arrow_drop_down),
                          underline: SizedBox(),
                          hint: Text(
                            'Select Duty',
                            style: TextStyle(fontSize: 20.0),
                          ),
                          value: chooseValue,
                          onChanged: (newValue) {
                            setState(
                              () {
                                chooseValue = newValue as String?;
                              },
                            );
                          },
                          items: listitem.map((valueItem) {
                            return DropdownMenuItem(
                              value: valueItem,
                              child: Text(valueItem),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 15.0,
                  thickness: 3.5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 16, right: 16),
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          border: Border.all(color: Colors.grey, width: 1),
                          borderRadius: BorderRadius.circular(15)),
                      child: DropdownButton(
                        dropdownColor: Colors.grey[300],
                        icon: Icon(Icons.arrow_drop_down),
                        underline: SizedBox(),
                        hint: Text(
                          'Seniority Level',
                          style: TextStyle(fontSize: 20.0),
                        ),
                        value: chooseValue2,
                        onChanged: (newValue) {
                          setState(
                            () {
                              chooseValue2 = newValue as String?;
                            },
                          );
                        },
                        items: listitem.map((valueItem) {
                          return DropdownMenuItem(
                            value: valueItem,
                            child: Text(valueItem),
                          );
                        }).toList(),
                      ),
                    ),
                    Counter(),
                  ],
                ),
                Divider(
                  height: 15.0,
                  thickness: 3.5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 16, right: 16),
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          border: Border.all(color: Colors.grey, width: 1),
                          borderRadius: BorderRadius.circular(15)),
                      child: DropdownButton(
                        dropdownColor: Colors.grey[300],
                        icon: Icon(Icons.arrow_drop_down),
                        underline: SizedBox(),
                        hint: Text(
                          'Seniority Level',
                          style: TextStyle(fontSize: 20.0),
                        ),
                        value: chooseValue3,
                        onChanged: (newValue) {
                          setState(
                            () {
                              chooseValue3 = newValue as String?;
                            },
                          );
                        },
                        items: listitem.map((valueItem) {
                          return DropdownMenuItem(
                            value: valueItem,
                            child: Text(valueItem),
                          );
                        }).toList(),
                      ),
                    ),
                    Counter(),
                  ],
                ),
                Divider(
                  height: 15.0,
                  thickness: 3.5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 16, right: 16),
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          border: Border.all(color: Colors.grey, width: 1),
                          borderRadius: BorderRadius.circular(15)),
                      child: DropdownButton(
                        dropdownColor: Colors.grey[300],
                        icon: Icon(Icons.arrow_drop_down),
                        underline: SizedBox(),
                        hint: Text(
                          'Seniority Level',
                          style: TextStyle(fontSize: 20.0),
                        ),
                        value: chooseValue4,
                        onChanged: (newValue) {
                          setState(
                            () {
                              chooseValue4 = newValue as String?;
                            },
                          );
                        },
                        items: listitem.map((valueItem) {
                          return DropdownMenuItem(
                            value: valueItem,
                            child: Text(valueItem),
                          );
                        }).toList(),
                      ),
                    ),
                    Counter(),
                  ],
                ),
                SizedBox(
                  height: 5.0,
                ),
                Column(
                  children: [
                    ListTile(
                      trailing: Text(
                        "+ Add More",
                        style: TextStyle(color: Colors.blue, fontSize: 20.0),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  bool? disable = false;
  int _itemcount = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(children: [
      _itemcount != 0
          ? IconButton(
              icon: Icon(
                Icons.remove_circle_outline,
                color: Colors.blue,
                size: 25.0,
              ),
              onPressed: () {
                setState(() {
                  _itemcount--;
                });
              },
            )
          : IconButton(
              onPressed: () => null,
              icon: Icon(
                Icons.remove_circle_outline,
                color: Colors.grey[350],
              )),
      Text(
        _itemcount.toString(),
        style: TextStyle(fontSize: 25.0),
      ),
      IconButton(
        icon: Icon(
          Icons.add_circle_outline_outlined,
          color: Colors.blue,
          size: 25.0,
        ),
        onPressed: () {
          setState(() {
            _itemcount++;
          });
        },
      )
    ]));
  }
}
