const oldPasswordIncorrectMsg = 'Confirm old password befor submitting!';
const serverFailMsg = 'Something went wrong!';
const internetIsuesMsg = 'Check your internet connection!';

class ErrorsConventer {
  final List<String> _msgs = [
    oldPasswordIncorrectMsg,
    serverFailMsg,
    internetIsuesMsg
  ];

  String convertedMsg({required String msg}) {
    final index = _msgs.indexOf(msg);
    if (index < 0) {
      return serverFailMsg;
    }

    switch (index) {
      case 0:
        return oldPasswordIncorrectMsg;
      case 1:
        return serverFailMsg;
      case 2:
        return internetIsuesMsg;
      default:
        return serverFailMsg;
    }
  }
}
