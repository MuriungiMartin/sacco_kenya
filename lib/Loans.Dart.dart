// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables, prefer_final_fields, unnecessary_new, prefer_const_constructors, unnecessary_this, control_flow_in_finally

import 'dart:core';
import 'package:flutter/material.dart';
import 'package:saccoke/ErrorStrings.dart';
import 'package:saccoke/Members.Dart.dart';

class Loans extends StatefulWidget {
  const Loans({Key? key}) : super(key: key);

  @override
  _LoansState createState() => _LoansState();
}

class LoansRegister {
  dynamic Loanno;
  var ApplicationDate = DateTime.now();
  var ClientCode;
  var ClientName;
  double AmountRequested=0;
  double ApprovedAmount=0;
  bool Sent=false;
  List LoanProducttype = const ["DEV","SCH","EMERGENCY","SPECIAL","JUNIOR","SALADVANCE","E-LOAN"];
  var GuarantorNo;
  var GuarantorName;
  double Membershares=0;
  double AmountGuaranteed=0;
  double GuarantorShares=0;
  double InterestRate=0;


}
class FromMemberData extends MemberData{
  dynamic maturity = new DateTime.now().subtract(const Duration(days: 180));
 // dynamic Jdate = DateTime.utc(JoinDate);
 dynamic checkmaturity(){
    try {
      if (maturity < JoinDate) {
        return ("This member Has less than 6 months duration in the sacco");
      }
      else{
        return("Member qualifies for the loan");
      }
    } on Exception catch (e) {
      return(e);
    } catch (u) {
      return ("Unknown Exception");
    } finally {
      return("Member has saved for more than six months");
    }
  }
}




class _LoansState extends State {

  LoansRegister _loansRegister = new LoansRegister();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(50.00),
      child: Form(
        key: _formKey,
        child: Column(
          children:[
            TextFormField(
              keyboardType: TextInputType.text,
              validator: (var Invalue){
                if (Invalue!.isEmpty){
                  return("Loan number Must have value");
                }
                return null;
              },
              onSaved: ( String? Invalue) async {
                assert(Invalue != null);
                this._loansRegister.Loanno=Invalue;
              },
              decoration: const InputDecoration(
                labelText: "Loan No",
                hintText: "Enter Loan No:",
              ),
            ),
            TextFormField(
              keyboardType: TextInputType.none,
             /* validator: (var Invalue){
                if (Invalue!.isEmpty){
                  return("Application Date Must have value");
                }
                return null;
              },*/
              onSaved: ( var Invalue) async {
                assert(Invalue != null);
                this._loansRegister.ApplicationDate= DateTime.now();
              },
              decoration: const InputDecoration(
                labelText: "Application Date",
               // hintText: "Enter Loan No:",
              ),
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              validator: (var Invalue){
                if (Invalue!.isEmpty){
                  return("Client Code Must have value");
                }
                return null;
              },
              onSaved: ( String? Invalue) async {
                assert(Invalue != null);
                this._loansRegister.ClientCode=Invalue;
              },
              decoration: const InputDecoration(
                labelText: "Client Code",
                hintText: "Client Code",
              ),
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              validator: (String? invalue){
                if (invalue!.isEmpty){
                  return(
                  ErrorStrings.TestfieldError()
                  );
                }
                return null;
              },
              onSaved: (String? invalue){
                assert(invalue!=null);
                this._loansRegister.ClientName=invalue;
              },
              decoration: const InputDecoration(
                labelText: "Client Name;",
                hintText: "Enter Client Name",
              ),
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              validator: (var invalue){
                if (invalue!.isEmpty) {
                  return (
                  ErrorStrings.invalidloanatype()
                  );
                }
                return null;
              },
              onSaved: (var invalue){
                assert(invalue!=null);
                this._loansRegister.LoanProducttype=invalue as List;
              },
              decoration: const InputDecoration(
                labelText: "Loan Product Type",
                hintText: "Enter Loan Product Type",
              ),
            ),
            TextFormField(
                keyboardType: TextInputType.text,
                validator: (var invalue){
                  try{
                    FromMemberData;
                  } on Exception {
                    return("An error occurred during validation of the member details. \n Please try again later!");
                  }
                  if (invalue!.isEmpty) {
                    return (
                        ErrorStrings.invalidloanatype()
                    );
                  }
                  return null;
                },
                onSaved: (var invalue){
                  assert(invalue!=null);
                  this._loansRegister.LoanProducttype=invalue as List;
                }
            ),
          ],
        ),
      ),
    );
  }
}

