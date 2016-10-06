import java.util.*;
public class Dealer extends Human{

    //cardsにカードを全て持たせる処理
int jkq=10; //ジャック、キング、クイーンは10とする
ArrayList<Integer> randomCard=new ArrayList<Integer>();
ArrayList<Integer> cards=new ArrayList<Integer>();
public void cards(){
     for(int x=0; x<4; x++){  //スート
       for(int y=1; y<=10; y++){  //1~10
         cards.add(y);
}
       for(int z=0; z<4; z++){
           cards.add(jkq);
}
}
}


public ArrayList<Integer> deal(){
     randomCard.clear();
 for(int i=0;i<2;i++){
     Random rnd= new Random();
     int ran=rnd.nextInt(cards.size()); //cardsの枚数からランダムな数値をranに代入
     randomCard.add(cards.get(ran)); //リストrandomCardにcardsからran番を追加
     cards.remove(ran); //cardsからrandomCardに追加したカードを削除
}
 return randomCard;
}
public ArrayList<Integer> hit(){
   randomCard.clear();
    Random rnd= new Random();
    int ran=rnd.nextInt(cards.size()); //cardsの枚数からランダムな数値をranに代入
    randomCard.add(cards.get(ran)); //リストrandomCardにcardsからran番のカードを追加
    cards.remove(ran); //cardsからrandomCardに追加したカードを削除
    return randomCard;
}
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
    return total<17;
 } 
 
 //次のカードを引くかに対する返答を表示
 public String answer(){
     if(checkSum()==true){
     return "YES";
 }else{
     return "NO";
 }
 }
  //持っているカード
 public int card(){
int ucard=0;
int ucard2=0;
ucard+=myCards.get(0);
return ucard;
}
 public int card2(){
int ucard2=0;
ucard2+=myCards.get(1);
return ucard2;
}
}