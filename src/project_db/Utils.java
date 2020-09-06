/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package project_db;

//import com.mysql.jdbc.Connection;
import java.awt.Component;
import java.awt.Container;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JComboBox;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.JTable;
import javax.swing.JTextArea;
import javax.swing.JTextField;
import javax.swing.table.TableCellRenderer;
import javax.swing.table.TableColumnModel;
import net.proteanit.sql.DbUtils;

/**
 *
 * @author kyriacos2
 */
public class Utils {
    
    static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
    static final String DB_URL = "jdbc:mysql://localhost/DBVehicleRental";
    static final String USER = "root";
    static final String PASS = "team24";
    
    /**
     *
     * @return Returns a connection to the database in DB_URL
     */
    public static Connection getConnection(){
        Connection conn = null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(DB_URL, USER, PASS);
        } catch (ClassNotFoundException | SQLException ex) {
            JOptionPane.showMessageDialog(null, "Failed to Connect to Database", "Error!", JOptionPane.ERROR_MESSAGE);
            Logger.getLogger(Utils.class.getName()).log(Level.SEVERE, null, ex);
        }
        return conn;
    }
    
    /**
     *
     * @param table JTable to resize columns
     */
    public static void resizeColumnWidth(JTable table) {
        final TableColumnModel columnModel = table.getColumnModel();
        for (int column = 0; column < table.getColumnCount(); column++) {
            int width = 15; // Min width
            for (int row = 0; row < table.getRowCount(); row++) {
                TableCellRenderer renderer = table.getCellRenderer(row, column);
                Component comp = table.prepareRenderer(renderer, row, column);
                width = Math.max(comp.getPreferredSize().width +1 , width);
            }
            if(width > 300)
                width=300;
            columnModel.getColumn(column).setPreferredWidth(width);
        }
    }
    
    /**
     *
     * @param rs ResultSet with table contents
     * @param table JTable to show results on
     */
    public static void showTable(ResultSet rs, JTable table){
        table.setModel(DbUtils.resultSetToTableModel(rs));
        resizeColumnWidth(table);
        table.setDefaultEditor(Object.class,null);
    }
    
    /**
     *
     * @param fr JFrame to clear Text Boxes
     */
    public static void clearTextBoxes(JFrame fr){
        Container cont;
        cont = fr.getContentPane();
        for (Component c : cont.getComponents())
        {
            if (c instanceof JTextField)
            {
                JTextField j = (JTextField)c;
                j.setText(null);
            }
        }  
    }
    
    /**
     *
     * @param fr JFrame to clear Text Areas
     */
    public static void clearTextAreas(JFrame fr){
        Container cont;
        cont = fr.getContentPane();
        for (Component c : cont.getComponents())
        {
            if (c instanceof JTextArea)
            {
                JTextArea j = (JTextArea)c;
                j.setText("");
            }
        }  
    }
    
    /**
     *
     * @param fr JFrame to clear ComboBoxes selections
     */
    public static void clearComboBoxes(JFrame fr){
        Container cont;
        cont = fr.getContentPane();
        for (Component c : cont.getComponents())
        {
            if (c instanceof JComboBox)
            {
                JComboBox j = (JComboBox)c;
                j.setSelectedItem(null);
            }
        }  
    }
}
