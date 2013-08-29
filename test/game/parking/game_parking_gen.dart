// test/game/parking/game_parking_gen.dart 
 
import "package:dartling/dartling.dart"; 
 
import "package:game_parking/game_parking.dart"; 
 
genCode() { 
  var repo = new Repo(); 
 
  var gameDomain = new Domain("Game"); 
 
  Model gameParkingModel = 
      fromJsonToModel(gameParkingModelJson, gameDomain, "Parking"); 
 
  repo.domains.add(gameDomain); 
 
  repo.gen("game_parking"); 
} 
 
initGameData(GameRepo gameRepo) { 
   var gameModels = 
       gameRepo.getDomainModels(GameRepo.gameDomainCode); 
 
   var gameParkingEntries = 
       gameModels.getModelEntries(GameRepo.gameParkingModelCode); 
   initGameParking(gameParkingEntries); 
   gameParkingEntries.display(); 
   gameParkingEntries.displayJson(); 
} 
 
void main() { 
  genCode(); 
 
  var gameRepo = new GameRepo(); 
  initGameData(gameRepo); 
} 
