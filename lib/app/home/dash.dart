part of game_parking_app;

class ActionPanel {

  final Board board;

  ButtonElement restartButton;

  LabelElement areaLabel;
  LabelElement parkingLabel;

  ActionPanel(this.board) {
    restartButton = document.query('#restart');
    restartButton.onClick.listen((MouseEvent e) {
      board.restart();
    });

    areaLabel = document.query('#area');
    parkingLabel = document.query('#parking');
  }

  displayCurrentArea() {
    areaLabel.text = board.currentArea.name;
  }

  displayCurrentParking() {
    parkingLabel.text = board.currentParking.number.toString();
  }

}
