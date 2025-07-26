void main(){
  List<ScoreSubject> listScore = [];
  listScore.add(ScoreSubject("Math", 80));
  listScore.add(ScoreSubject("science", 60));
  
  double totalScore = 0;
  listScore.forEach((data){
    print(data.title);
    print(data.score);
    totalScore += data.score;
    
  });
  
  print(totalScore);
  
  Map<String, ScoreSubject> scoreUser = {
    'John' : ScoreSubject('Math', 80),
    'Aris' : ScoreSubject('Math', 60),
  };
  
  print("-------------------------------------");
  scoreUser['John']?.showResult();
  
  
}


class ScoreSubject{
  String title;
  double score;
  
  ScoreSubject(this.title, this.score);
  
  void showResult(){
    print("Subject : $title, Score : $score");
  }
  
}