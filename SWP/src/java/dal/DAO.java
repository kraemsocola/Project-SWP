/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import model.Product;

/**
 *
 * @author hp
 */
public class DAO extends DBContext {

    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        String sql = "SELECT [id]\n"
                + "      ,[category_id]\n"
                + "      ,[title]\n"
                + "      ,[gender_id]\n"
                + "      ,[price_in]\n"
                + "      ,[price_out]\n"
                + "      ,[discount_id]\n"
                + "      ,[thumbnail]\n"
                + "      ,[description]\n"
                + "      ,[size_id]\n"
                + "      ,[quantity]\n"
                + "      ,[created_at]\n"
                + "      ,[updated_at]\n"
                + "  FROM [SWP].[dbo].[Products]";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product c = new Product();
                c.setCategory_id(rs.getInt("category_id"));
                c.setTitle(rs.getString("title"));
                c.setGender_id(rs.getInt("gender_id"));
                c.setPrice_in(rs.getInt("price_in"));
                c.setPrice_out(rs.getInt("price_out"));
                c.setDiscount_id(rs.getInt("discount_id"));
                c.setThumbnail(rs.getString("thumbnail"));
                c.setDescription(rs.getString("description"));
                c.setSize_id(rs.getInt("size_id"));
                c.setQuantity(rs.getInt("quantity"));
                c.setCreated_at(rs.getDate("created_at"));
                c.setCreated_at(rs.getDate("updated_at"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    void abc() {
        System.out.println("Truong khong dep zai");
    }

    public List<Product> getProductPresentation() {
        List<Product> list = new ArrayList<>();
        String sql = "  SELECT top 12		\n"
                + "                     [title], [gender_id]\n"
                + "                     ,min(price_out) as price\n"
                + "                    ,[thumbnail]\n"
                + "                FROM [SWP].[dbo].[Products]\n"
                + "                group by \n"
                + "                      [title]\n"
                + "                    ,[thumbnail], gender_id";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product c = new Product();
                c.setGender_id(rs.getInt("gender_id"));
                c.setSize_id(1);
                c.setTitle(rs.getString("title"));
                c.setPrice_out(rs.getInt("price"));
                c.setThumbnail(rs.getString("thumbnail"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

}
