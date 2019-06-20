import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'login_new.dart';

class CustomerEngagement extends StatefulWidget {
  @override
  _CustomerEngagementState createState() => _CustomerEngagementState();
}

class _CustomerEngagementState extends State<CustomerEngagement> {
  int visibilityTag = -1;
  int orderGivenTag = -1;
  int _radioValue = -1;
  var gender = "";
  var saved = false;

  void _changed(int visibility) {
    setState(() {
      visibilityTag = visibility;
    });
  }

  void _changedOrder(int visibility) {
    setState(() {
      orderGivenTag = visibility;
    });
  }

  void _handleRadioValueChange(int value) {
    setState(() {
      _radioValue = value;

      switch (_radioValue) {
        case 0:
          gender = "Male";
          break;
        case 1:
          gender = "Female";
          break;
        case 2:
          gender = "Other";
          break;
      }
    });
  }

  DateTime selectedDate = DateTime.now();

  var dob = "";

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1955, 8),
        lastDate: selectedDate);
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
        final dateFormatter = DateFormat('dd-MM-yyyy');
        dob = dateFormatter.format(selectedDate);
      });
  }

  @override
  Widget build(BuildContext context) {
    return new LayoutBuilder(
      builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return new Scaffold(
          appBar: new AppBar(
            title: new Text("Customer Engagement"),
          ),
          body: SingleChildScrollView(
            child: new ConstrainedBox(
              constraints: new BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: new IntrinsicHeight(
                child: new Column(
                  children: <Widget>[
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        new Text(
                          "Add Consumer \n Engagement Data",
                          style: new TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold),
                        ),
                        RaisedButton(
                          child: new Text(
                            "Yes",
                            style: new TextStyle(
                                color: Colors.black,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold),
                          ),
                          color:
                              visibilityTag == 1 ? Colors.green : Colors.grey,
                          onPressed: () {
                            _changed(1);
                          },
                        ),
                        RaisedButton(
                          child: new Text(
                            "No",
                            style: new TextStyle(
                                color: Colors.black,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold),
                          ),
                          color: visibilityTag == 0 ? Colors.red : Colors.grey,
                          onPressed: () {
                            _changed(0);
                          },
                        ),
                      ],
                    ),
                    visibilityTag == 1
                        ? new Column(
                            children: <Widget>[
                              const Divider(
                                height: 1.0,
                              ),
                              new ListTile(
                                leading: const Icon(Icons.person),
                                title: new TextField(
                                  decoration: new InputDecoration(
                                    hintText: "Name",
                                  ),
                                ),
                              ),
                              new ListTile(
                                leading: const Icon(Icons.phone),
                                title: new TextField(
                                  keyboardType:
                                      TextInputType.numberWithOptions(),
                                  decoration: new InputDecoration(
                                    hintText: "Mobile",
                                  ),
                                ),
                              ),
                              new ListTile(
                                leading: const Icon(Icons.email),
                                title: new TextField(
                                  decoration: new InputDecoration(
                                    hintText: "Email",
                                  ),
                                ),
                              ),
                              const Divider(
                                height: 1.0,
                              ),
                              new Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.person,
                                    color: Colors.grey,
                                  ),
                                  Text(
                                    "Gender",
                                    style: new TextStyle(fontSize: 16.0),
                                  ),
                                  new Radio(
                                    value: 0,
                                    groupValue: _radioValue,
                                    onChanged: _handleRadioValueChange,
                                  ),
                                  new Text(
                                    'Male',
                                    style: new TextStyle(fontSize: 14.0),
                                  ),
                                  new Radio(
                                    value: 1,
                                    groupValue: _radioValue,
                                    onChanged: _handleRadioValueChange,
                                  ),
                                  new Text(
                                    'Female',
                                    style: new TextStyle(
                                      fontSize: 14.0,
                                    ),
                                  ),
                                  new Radio(
                                    value: 2,
                                    groupValue: _radioValue,
                                    onChanged: _handleRadioValueChange,
                                  ),
                                  new Text(
                                    'Other',
                                    style: new TextStyle(fontSize: 14.0),
                                  ),
                                ],
                              ),
                              new ListTile(
                                leading: new IconButton(
                                  icon: Icon(Icons.today),
                                  onPressed: () => _selectDate(context),
                                ),
                                title: const Text('Date of Birth'),
                                subtitle: Text(dob),
                              ),
                              new Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  new Text(
                                    "Order given",
                                    style: new TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                  RaisedButton(
                                    child: new Text(
                                      "Yes",
                                      style: new TextStyle(
                                        color: Colors.black,
                                        fontSize: 15.0,
                                      ),
                                    ),
                                    color: orderGivenTag == 1
                                        ? Colors.green
                                        : Colors.grey,
                                    onPressed: () {
                                      _changedOrder(1);
                                    },
                                  ),
                                  RaisedButton(
                                    child: new Text(
                                      "No",
                                      style: new TextStyle(
                                        color: Colors.black,
                                        fontSize: 15.0,
                                      ),
                                    ),
                                    color: orderGivenTag == 0
                                        ? Colors.red
                                        : Colors.grey,
                                    onPressed: () {
                                      _changedOrder(0);
                                    },
                                  ),
                                ],
                              ),
                              const Divider(
                                height: 1.0,
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: new Container(
                                  margin: const EdgeInsets.only(top: 10.0),
                                  child: new RaisedButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Add",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const Divider(
                                height: 5.0,
                                color: Colors.grey,
                                indent: 5.0,
                              ),
                            ],
                          )
                        : new Container(),
                    new Expanded(
                      child: new Align(
                        alignment: Alignment.bottomRight,
                        child: new RawMaterialButton(
                          onPressed: () {
                            Route route = MaterialPageRoute(builder: (context) => LoginNew());
                            Navigator.pushReplacement(context, route);
                          },
                          child: saved
                              ? new Icon(
                                  Icons.update,
                                  color: Colors.green,
                                  size: 30.0,
                                )
                              : new Icon(
                                  Icons.save,
                                  color: Colors.blue,
                                  size: 30.0,
                                ),
                          shape: new CircleBorder(),
                          elevation: 2.0,
                          fillColor: Colors.white,
                          padding: const EdgeInsets.all(15.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
