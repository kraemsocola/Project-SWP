/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.User;

/**
 *
 * @author ASUS
 */
public class UserDAO extends DBContext{
    public User checkAccount(String username, String password){
        String sql="select * from Users where username=? and password=?";
        try {
            PreparedStatement st=connection.prepareStatement(sql);
            st.setString(1,username);
            st.setString(2,password);
            ResultSet rs=st.executeQuery();
                       
            if(rs.next()){
                return new User(rs.getInt("id"),rs.getInt("loginType"),rs.getInt("role_id"),
                        rs.getString("firstname"),
                        rs.getString("lastname"),username,password,
                        rs.getString("email"),rs.getString("phone_number"),rs.getString("address"),
                        rs.getDate("created_at"),rs.getDate("updated_at"),rs.getInt("deleted")
                        );
            }
        } catch (SQLException e) {
        }
        return null;
    }
    
    public void addUser(String username,String password) {
        String sql = "INSERT INTO [dbo].[Users]\n"
                + "           ([loginType]\n"
                + "           ,[role_id]\n"
                + "           ,[firstname]\n"
                + "           ,[lastname]\n"
                + "           ,[username]\n"
                + "           ,[password]\n"
                + "           ,[email]\n"
                + "           ,[phone_number]\n"
                + "           ,[address]\n"
                + "           ,[created_at]\n"
                + "           ,[updated_at]\n"
                + "           ,[deleted])\n"
                + "     VALUES\n"
                + "           (1, 1, null, null, ?, ?, null, null, null, null, null, null)";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
 
            st.setString(1, username);
            st.setString(2, password);
     
            st.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public User getAccountByLoginName(String name) {
        String sql = "Select * from Users where username = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                User c = new User(rs.getInt("id"), rs.getInt("loginType"), rs.getInt("role_id"),
                        rs.getString("firstname"),
                        rs.getString("lastname"), name, rs.getString("password"),
                        rs.getString("email"), rs.getString("phone_number"), rs.getString("address"),
                        rs.getDate("created_at"), rs.getDate("updated_at"), rs.getInt("deleted")
                );
                return c;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
    
    public static void main(String[] args) {
        UserDAO d=new UserDAO();
        
        User u=d.checkAccount("maigiang", "123");
         System.out.println(u);
    }
}
