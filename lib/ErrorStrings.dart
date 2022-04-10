// ignore_for_file: file_names, non_constant_identifier_names, avoid_print

class ErrorStrings {
    static TestfieldError() {
    String testField = "The field Cannot be empty \n Please insert correct value!";
    print(testField);
  }
  static emailValidateError() {
    String emailValidate = "Please Enter A valid e-mail address.";
    print(emailValidate);
  }
  static idvalidateerro(){
    String idValidate = "Id Number Cannot be less than Four Digits";
    print(idValidate);
  }
  static chequevalidateerror(){
    String chequeValidate = "Cheque Number cannot have less than Six digits.";
    print(chequeValidate);
  }
  static approvalerror(){
    String approvalError = "The Document's Status must be Approved Before Posting. \n Please Contact Your Approver.";
    print(approvalError);
  }
  static invalidloanatype(){
      String LoantypeError = "The loan type does not exist \n Please enter a valid loan type from the listr provided.";
      print(LoantypeError);
  }
  static invalidloanapplication(){
      String InvalidloanapplicationError="Approved Amount cannot be greater than amount applied.";
      print(InvalidloanapplicationError);
  }
  static immaturemember(){
      String Immaturemembererror="The member Must have saved with the sacco for more than six months to qualify for the loan";
      print(Immaturemembererror);
  }
  static dateerror(){
      String Dateerror="Invalid Date";
      print(Dateerror);
  }
}