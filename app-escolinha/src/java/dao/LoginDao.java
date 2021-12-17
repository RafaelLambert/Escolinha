/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import model.Login;
import model.Pessoa;

/**
 *
 * @author randel
 */
public class LoginDao {

    public static Pessoa validar(Login login) {
        Connection connection = ConnectionFactory.getConnection();
        String sql = "";       
        Pessoa pessoa = null;

        sql = "SELECT id, idCargo, nome,\n"
                + "       sobrenome, cpf, datanascimento,\n"
                + "       email, senha, status \n"
                + "FROM pessoa AS pe\n"
                + "WHERE email LIKE 'leilaluei02@gmail.com'\n"
                + "AND senha LIKE 'LEIA@3x1kia' \n"
                + "AND status = TRUE;";

        try {
            Statement stmt = connection.createStatement();
            PreparedStatement ps;
            ResultSet rs = null;
            
            ps = connection.prepareStatement(sql);
            ps.setString(1, login.getEmail().trim());
            ps.setString(2, login.getSenha().trim());

            switch (login.getCargo()) {
                case "aluno":                 
                    rs = ps.executeQuery();

                    if (rs.next()) {
                        pessoa = new Pessoa();
                        // Set dados da pessoa
                        
                    }

                    break;
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return pessoa;

    }
}
