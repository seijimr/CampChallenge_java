
import java.util.*;

public class User extends Dealer{

//myCardsへカードを追加
 @Override
 public void setCard(ArrayList<Integer> randomCard){
      for(int i=0; i<randomCard.size();i++){
      myCards.add(randomCard.get(i));
}
randomCard.clear();
}
//myCardsの合計値を出し返却
 @Override
 public int open(){
     int total=0;
     for(int i=0;i<myCards.size();i++){
         total+=myCards.get(i);
         if(myCards.get(i)==1&&total<=10){
         total+=10; //Aを引いた時合計値が10以下だった場合Aを11とする
         }
     }
     return total;
 }
 //myCardsを確認しカードが必要ならtrue必要なければfalseを返す
 @Override
 public boolean checkSum(){
    int total=0;
     for(int i=0;i<myCards.size();i++){
         total+=myCards.get(i);
         if(myCards.get(i)==1&&total<=10){
             total+=10; //Aを引いた時合計値が10以下だった場合Aを11とする
         }
     }
     return total<12; 
 }
 //ディーラーの方が多いかつ、バストしていない時の処理
  public boolean checkSum2(){
    int total=0;
     for(int i=0;i<myCards.size();i++){
         total+=myCards.get(i);
         if(myCards.get(i)==1&&total<=10){
             total+=10; //Aを引いた時合計値が10以下だった場合Aを11とする
         }
     }
     return total<21; 
 }
}
