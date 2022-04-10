// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables, unnecessary_this, duplicate_ignore, avoid_print, prefer_final_fields, unnecessary_new

import 'package:flutter/material.dart';
import 'package:saccoke/ErrorStrings.dart';
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
  var JoinDate = DateTime.now();
  var idNo;
  var email;

  /*
  static ValidateLoanMaturity(var memberNo){
    if ( this.JoinDate -  (DateTime.now())){

    }
  }

   */

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
      padding: const EdgeInsets.all(50.00),
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
              decoration: const InputDecoration(
                label: Text("Member Number"),
                hintText: "Enter Member Number",
              ),
            ),
            TextFormField(
              keyboardType: TextInputType.name,
              validator: (String? InitValue) {
                if (InitValue!.length < 3) {
                  return("Name length must be greater than two!");
                }
                return null;
              },
              onSaved: (String? InitValue){
                assert(InitValue != null);
                this._memberData.firstName=InitValue!;
            },
              decoration: const InputDecoration(
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
              decoration: const InputDecoration(
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
              decoration: const InputDecoration(
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
              decoration: const InputDecoration(
                labelText: "Id/Passport No:",
                hintText: "Enter National Id/Passport No:",
              ),
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              validator: (var invalue){
                if (invalue!.length<10){
                  return(ErrorStrings.chequevalidateerror());
                }
                return null;
              },
              onSaved: (var invalue){
                this._memberData.email=invalue;
              },
              decoration: const InputDecoration(
                icon: Icon(Icons.email_outlined),
                labelText: "E-mail",
                hintText: "memberemail@example.com",
              ),
            ),
            TextFormField(
              keyboardType: TextInputType.datetime,
              validator: (dynamic invalue){
                if (invalue!.isEmpty){
                  return (ErrorStrings.dateerror());
                }
                return null;
              },
              onSaved: (dynamic invalue){
                this._memberData.JoinDate=invalue;
              },
              decoration: const InputDecoration(
                icon: Icon(Icons.date_range_outlined),
                labelText: "Registration Date",
                hintText: "Enter Registration Date",
              ),
            ),
            ElevatedButton.icon(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    print("You  have Successfully registered member No: \n ${_memberData.memberNo}");

                  }
                },
              icon: const Icon(Icons.post_add_outlined),
              label: const Text("Register Member"),
                ),

          ],
        ),

          ),
    );
  }
}

