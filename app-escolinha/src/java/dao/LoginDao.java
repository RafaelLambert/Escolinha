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

        sql = "SELECT pe.id, pe.idCargo, pe.nome,\n"
                + "       pe.sobrenome, pe.cpf, pe.datanascimento,\n"
                + "       pe.email, pe.senha, pe.status, cg.nome\n"
                + "FROM pessoa as pe\n"
                + "LEFT JOIN cargo as cg\n"
                + "ON pe.idCargo = cg.id\n"
                + "WHERE pe.email LIKE ?\n"
                + "AND pe.senha LIKE ?\n"
                + "AND cg.nome LIKE ? \n"
                + "AND status = 1;";

        try {
            Statement stmt = connection.createStatement();
            PreparedStatement ps;
            ResultSet rs = null;

            ps = connection.prepareStatement(sql);
            ps.setString(1, login.getEmail().trim());
            ps.setString(2, login.getSenha().trim());
            ps.setString(3, login.getCargo().trim());

            rs = ps.executeQuery();

            if (rs.next()) {
                pessoa = new Pessoa();
                pessoa.setIdPessoa(rs.getInt("id"));
                pessoa.setNome(rs.getString("nome"));
                pessoa.setSobrenome(rs.getString("sobrenome"));
                pessoa.setCargo(login.getCargo());
                
            }
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return pessoa;

    }
}
