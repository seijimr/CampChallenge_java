

public class task3 {
public int hensu1;
public int hensu2;
public void setMethod(){
hensu1=1;
hensu2=2;
}
public void printMethod(){
out.print(hensu1);
out.print(hensu2);
}

public static void main(String[] args){
task3 x = new task3();
x.setMethod();
x.printMethod();
}
}