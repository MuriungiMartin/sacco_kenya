// ignore_for_file: file_names, non_constant_identifier_names

class ErrorStrings {
    static TestfieldError() {
    String testField = "The field Cannot be empty \n Please insert correct value!";
    return(testField);
  }
  static emailValidateError() {
    String emailValidate = "Please Enter A valid e-mail address.";
    return(emailValidate);
  }
  static idvalidateerro(){
    String idValidate = "Id Number Cannot be less than Four Digits";
    return(idValidate);
  }
  static chequevalidateerror(){
    String chequeValidate = "Cheque Number cannot have less than Six digits.";
    return(chequeValidate);
  }
  static approvalerror(){
    String approvalError = "The Document's Status must be Approved Before Posting. \n Please Contact Your Approver.";
    return(approvalError);
  }
  static invalidloanatype(){
      String LoantypeError = "The loan type does not exist \n Please enter a valid loan type from the listr provided.";
      return(LoantypeError);
  }
  static invalidloanapplication(){
      String InvalidloanapplicationError="Approved Amount cannot be greater than amount applied.";
      return(InvalidloanapplicationError);
  }
  static immaturemember(){
      String Immaturemembererror="The member Must have saved with the sacco for more than six months to qualify for the loan";
      return(Immaturemembererror);
  }
  static dateerror(){
      String Dateerror="Invalid Date";
      return(Dateerror);
  }
}