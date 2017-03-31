package dao; 

import java.sql.Connection;  
import java.sql.DriverManager;  
import java.sql.PreparedStatement;  
import java.sql.SQLException;  
  
public class DBHelper {  
//    public static final String url = "jdbc:mysql://127.0.0.1/test";  
//    public static final String name = "com.mysql.jdbc.Driver";  
//    public static final String user = "root";  
//    public static final String password = "123456";  
  
//    public Connection conn = null;  
//    public PreparedStatement pst = null;  
  
//    public DBHelper(String sql) {  
//        try {  
//            Class.forName(name);//指定连接类型  
//            conn = DriverManager.getConnection(url, user, password);//获取连接  
//            pst = conn.prepareStatement(sql);//准备执行语句  
//        } catch (Exception e) {  
//            e.printStackTrace();  
//        }  
//    }  
  
//    public void close() {  
//        try {  
//            this.conn.close();  
//            this.pst.close();  
//        } catch (SQLException e) {  
//            e.printStackTrace();  
//        }  
//    }
/**
 * 定义一个方法来连接数据库
 * @return
 */
	public static Connection getConnection() {
		Connection conn = null;
        try {
            // 加载驱动
            Class.forName("com.mysql.jdbc.Driver");
            // 数据库连接url
            String url = "jdbc:mysql://localhost:3306/test";
            // 获取数据库连接
            conn = DriverManager.getConnection(url, "root", "123456");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }
    /**
     * 关闭数据库连接
     * @param conn Connection对象
     */
    public static void closeConnection(Connection conn){
        // 判断conn是否为空
        if(conn != null){
            try {
                conn.close();   // 关闭数据库连接
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
} 
    }