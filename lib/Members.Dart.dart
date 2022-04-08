import 'package:flutter/material.dart';
class Members extends StatelessWidget {
  const Members({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
class MemberData{
  var memberNo;
  String firstName ="";
  String middleName ="";
  String lastName = "";
  var idNo;
}
class RegisterNewMember extends StatefulWidget {
  const RegisterNewMember({Key? key}) : super(key: key);

  @override
  _RegisterNewMemberState createState() => _RegisterNewMemberState();
}

class _RegisterNewMemberState extends State {
  MemberData _memberData = new MemberData();
  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(50.00),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              keyboardType: TextInputType.number,
              validator: (var inValue){
                if ( inValue!.isEmpty) {
                  //Error("This Field cannot be empty!!!");
                  return("This Field cannot be empty!!!");
                }
                return null;
              },
              onSaved: (var inValue) {
                this._memberData.memberNo=inValue;
              },
              decoration: InputDecoration(
                label: Text("Member Number"),
                hintText: "Enter Member Number",
              ),
            ),
            TextFormField(
              keyboardType: TextInputType.name,
              // ignore: non_constant_identifier_names
              validator: (String? InitValue) {
                if (InitValue!.length < 3) {
                  return("Name length must be greater than two!");
                }
                return null;
              },
              onSaved: (String? InitValue){
                this._memberData.firstName=InitValue!;
            },
              decoration: InputDecoration(
                labelText: "First Name",
                hintText: "Enter First Name",
              ),
            ),
            TextFormField(
              keyboardType: TextInputType.name,
              // ignore: non_constant_identifier_names
              validator: (String? InitValue) {
                if (InitValue!.length < 3) {
                  return("Name length must be greater than two!");
                }
                return null;
              },
              onSaved: (String? InitValue){
                this._memberData.middleName=InitValue!;
              },
              decoration: InputDecoration(
                labelText: "Middle Name",
                hintText: "Enter Middle Name",
              ),
            ),
            TextFormField(
              keyboardType: TextInputType.name,
              // ignore: non_constant_identifier_names
              validator: (String? InitValue) {
                if (InitValue!.length < 3) {
                  return("Name length must be greater than two!");
                }
                return null;
              },
              onSaved: (String? InitValue){
                this._memberData.firstName=InitValue!;
              },
              decoration: InputDecoration(
                labelText: "Last Name",
                hintText: "Enter Last Name",
              ),
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              validator: (String? idValue) {
                if (idValue!.length <= 4 ) {
                  return("ID length must be greater than 4");
                }
                return null;
              },
              onSaved: (String? idValue){
                this._memberData.idNo=idValue;
              },
              decoration: InputDecoration(
                labelText: "Id/Passport No:",
                hintText: "Enter Natioonal Id/Passport No:",
              ),
            ),
            RaisedButton.icon(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    print("You  have Succssefuly registerd member No: \n ${_memberData.memberNo}");
                  }
                },
              icon: Icon(Icons.post_add_outlined),
              label: Text("Register Member"),
                ),

          ],
        ),

          ),
    );
  }
}

