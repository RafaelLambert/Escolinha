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
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Pessoa;

/**
 *
 * @author randel
 */
public class AlunoDao {

    public static Pessoa findById(int idPessoa) {
        Connection connection = ConnectionFactory.getConnection();
        
        Pessoa pessoa = null;
        String sql = "SELECT id, idCargo, nome,\n"
                + "       sobrenome, cpf, datanascimento,\n"
                + "       email, senha, status \n"
                + "FROM pessoa\n"
                + "WHERE id = ? \n"
                + "AND status = TRUE;";

         System.err.println("Data Nascimento:");
        try {
            Statement stmt = connection.createStatement();
            PreparedStatement ps;
            ResultSet rs = null;
            
            ps = connection.prepareStatement(sql);
            ps.setInt(1, idPessoa);

            rs = ps.executeQuery();

            if (rs.next()) {
                pessoa = new Pessoa();
                pessoa.setIdPessoa(rs.getInt("id"));
                pessoa.setNome(rs.getString("nome"));
                pessoa.setSobrenome(rs.getString("sobrenome"));
                pessoa.setCpf(rs.getString("cpf"));
                pessoa.setDataNascimento(rs.getString("datanascimento"));
                pessoa.setEmail(rs.getString("email"));
                System.err.println("Data Nascimento: " + pessoa.getDataNascimento());
            }

        } catch (SQLException ex) {
            Logger.getLogger(AlunoDao.class.getName()).log(Level.SEVERE, null, ex);
        }

        return pessoa;

    }

}
