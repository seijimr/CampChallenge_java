<%-- 
１０．紹介していないJAVAの標準クラスを利用して、処理を作成してください。

　講義では紹介されていないJAVAの標準クラスはたくさん存在します。
　１つJAVAの標準クラスを選び、実際にロジックを作成してみてください。


　また、この処理を作成するに当たり、下記を必ず実装してください。

　①処理の経過を書き込むログファイルを作成する。
　②処理の開始、終了のタイミングで、ログファイルに開始・終了の書き込みを行う。
　③書き込む内容は、「日時　状況（開始・終了）」の形式で書き込む。
　④最後に、ログファイルを読み込み、その内容を表示してください。

--%>

<%@page import="java.util.logging.Level"%>
<%@page import="java.util.logging.FileHandler"%>
<%@page import="java.util.logging.Logger"%>
<%@page contentType="text/html" pageEncoding="UTF-8"
        import="java.util.*,java.text.*,java.io.*" %>
<%
    //ログファイルの作成
File dir = new File("C:\\javalog");
File txtlog = new File("C:\\javalog\\txtLog.txt");
 dir.mkdir(); 
 txtlog.createNewFile();

 //ログファイルへのログの出力
 //Logger logger = Logger.getLogger("Logging");
//FileHandler fh = new FileHandler("C:\\javalog\\Log.log");
//fh.setFormatter(new java.util.logging.SimpleFormatter());
FileWriter fw = new FileWriter(txtlog);
BufferedWriter bw = new BufferedWriter(fw);

String b = ("<br>");

//処理開始
Date stdate = new Date();
bw.write(stdate + "   ");
bw.write("処理開始" + b + b);

Date date1 = new Date();
bw.write(date1 + "   ");
bw.write("Loggerクラスインスタンスを生成" + b + b);

final Logger logger = Logger.getLogger("ログ");

Date date2 = new Date();
bw.write(date2 + "   ");
bw.write("出力ファイルの作成と指定" + b + b);

FileHandler fh = new FileHandler("C:\\javalog\\Log.log");
fh.setFormatter(new java.util.logging.SimpleFormatter());
logger.addHandler(fh);

Date date3 = new Date();
bw.write(date3 + "   ");
bw.write("ログレベルとログメッセージを渡し出力" + b + b);

logger.log(Level.FINEST, "finest");
logger.log(Level.FINER, "finer");
logger.log(Level.FINE, "fine");
logger.log(Level.CONFIG, "config");
logger.log(Level.INFO, "info");
logger.log(Level.WARNING, "warning");
logger.log(Level.SEVERE, "severe");

//処理終了
Date findate = new Date();
bw.write(findate + "   ");
bw.write("処理終了" + b + b);

bw.close();
                
 FileReader fr = new FileReader(txtlog);
 BufferedReader br = new BufferedReader(fr);
       String str;
while((str = br.readLine()) != null){
     out.print(str);
}
br.close();
%>