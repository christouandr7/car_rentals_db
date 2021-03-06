/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package project_db;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JTextField;
import java.time.*;
import javax.swing.JOptionPane;


/**
 *
 * @author kyriacos2
 */
public class QrAvailableVehicles extends javax.swing.JFrame {

    private Connection conn = null;
    private ResultSet rs = null;
    private PreparedStatement prstmt = null;
    private Statement stmt=null;
    private String sql = "SELECT vehicles.License_Plate, vehicles.Make, vehicles.Model, vehicles.Type "
            + "FROM vehicles "
            + "WHERE vehicles.License_Plate NOT IN (SELECT rents.License_Plate "
                                                    + "FROM rents "
                                                    + "WHERE rents.Start_Date BETWEEN ? AND ? OR ? BETWEEN rents.Start_Date AND rents.Finish_Date) "
                + "AND vehicles.License_Plate NOT IN (SELECT reserves.License_Plate "
                                                    + "FROM reserves "
                                                    + "WHERE reserves.Start_Date BETWEEN ? AND ? OR ? BETWEEN reserves.Start_Date AND reserves.Finish_Date) "
                + "AND vehicles.Store_ID=?;";
    /**
     * Creates new form Query1
     */
    public QrAvailableVehicles() {
        initComponents();
        conn = Utils.getConnection();
        jdcStartDate.setDate(Date.valueOf(LocalDate.now()));
        jdcEndDate.setDate(Date.valueOf(LocalDate.now()));
        fillComboBox();

    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jbtnBack = new javax.swing.JButton();
        jLabel1 = new javax.swing.JLabel();
        jScrollPane1 = new javax.swing.JScrollPane();
        jTable = new javax.swing.JTable();
        jbtnFind = new javax.swing.JButton();
        jLabel2 = new javax.swing.JLabel();
        jcbStore = new javax.swing.JComboBox<>();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jdcStartDate = new com.toedter.calendar.JDateChooser();
        jdcEndDate = new com.toedter.calendar.JDateChooser();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jbtnBack.setText("Back");
        jbtnBack.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbtnBackActionPerformed(evt);
            }
        });
        getContentPane().add(jbtnBack, new org.netbeans.lib.awtextra.AbsoluteConstraints(780, 440, -1, -1));

        jLabel1.setFont(new java.awt.Font("Dialog", 1, 24)); // NOI18N
        jLabel1.setText("AVAILABLE VEHICLES");
        getContentPane().add(jLabel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(290, 10, -1, -1));

        jTable.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Title 1", "Title 2", "Title 3", "Title 4"
            }
        ));
        jScrollPane1.setViewportView(jTable);

        getContentPane().add(jScrollPane1, new org.netbeans.lib.awtextra.AbsoluteConstraints(70, 100, 740, 320));

        jbtnFind.setText("FIND");
        jbtnFind.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbtnFindActionPerformed(evt);
            }
        });
        getContentPane().add(jbtnFind, new org.netbeans.lib.awtextra.AbsoluteConstraints(750, 60, -1, -1));

        jLabel2.setText("Store:");
        getContentPane().add(jLabel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(60, 60, -1, 20));

        getContentPane().add(jcbStore, new org.netbeans.lib.awtextra.AbsoluteConstraints(110, 60, 90, -1));

        jLabel3.setText("Start Date:");
        getContentPane().add(jLabel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(230, 60, -1, 20));

        jLabel4.setText("End Date:");
        getContentPane().add(jLabel4, new org.netbeans.lib.awtextra.AbsoluteConstraints(500, 60, -1, 20));

        jdcStartDate.setDateFormatString("yyyy-MM-dd");
        getContentPane().add(jdcStartDate, new org.netbeans.lib.awtextra.AbsoluteConstraints(310, 60, 170, -1));

        jdcEndDate.setDateFormatString("yyyy-MM-dd");
        getContentPane().add(jdcEndDate, new org.netbeans.lib.awtextra.AbsoluteConstraints(570, 60, 160, -1));

        setSize(new java.awt.Dimension(902, 509));
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void jbtnBackActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbtnBackActionPerformed
        // TODO add your handling code here:
        this.dispose();
    }//GEN-LAST:event_jbtnBackActionPerformed

    private void jbtnFindActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbtnFindActionPerformed
        // TODO add your handling code here:
        Date StartDate,EndDate;
        int StoreID;
        StartDate=Date.valueOf(((JTextField)jdcStartDate.getDateEditor().getUiComponent()).getText());
        EndDate=Date.valueOf(((JTextField)jdcEndDate.getDateEditor().getUiComponent()).getText());
        if (jcbStore.getSelectedIndex()==-1)
        {
            JOptionPane.showMessageDialog(null, "Select a Position from ComboBox!");
        }
        else
        {
            StoreID=Integer.parseInt(jcbStore.getSelectedItem().toString().split(", ")[0]);
            try {
                prstmt=conn.prepareStatement(sql);
                prstmt.setDate(1, StartDate);
                prstmt.setDate(2, EndDate);
                prstmt.setDate(3, StartDate);
                prstmt.setDate(4, StartDate);
                prstmt.setDate(5, EndDate);
                prstmt.setDate(6, StartDate);
                prstmt.setInt(7, StoreID);
                rs=prstmt.executeQuery();
                jTable.setAutoCreateRowSorter(true); ///////APORIA//////////
                Utils.showTable(rs, jTable);
                jTable.setDefaultEditor(Object.class,null);
            } catch (SQLException ex) {
                Logger.getLogger(QrAvailableVehicles.class.getName()).log(Level.SEVERE, null, ex);
            }finally{
                try {
                    if(prstmt!=null)
                        prstmt.close();
                } catch (SQLException ex) {
                        Logger.getLogger(QrAvailVehYear.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
    }//GEN-LAST:event_jbtnFindActionPerformed

    @Override
    public void dispose(){
        try {
            if(conn!=null)
                conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(QrFindCustomerInfo.class.getName()).log(Level.SEVERE, null, ex);
        }
        MainMenu.queriesForm.setVisible(true);
        super.dispose();
    }
    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(QrAvailableVehicles.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(QrAvailableVehicles.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(QrAvailableVehicles.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(QrAvailableVehicles.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new QrAvailableVehicles().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTable jTable;
    private javax.swing.JButton jbtnBack;
    private javax.swing.JButton jbtnFind;
    private javax.swing.JComboBox<String> jcbStore;
    private com.toedter.calendar.JDateChooser jdcEndDate;
    private com.toedter.calendar.JDateChooser jdcStartDate;
    // End of variables declaration//GEN-END:variables

    private void fillComboBox() {
        try {
            stmt=conn.createStatement();
            rs=stmt.executeQuery("SELECT * FROM store;");
            while (rs.next())
            {
                jcbStore.addItem(Integer.toString(rs.getInt("Store_ID"))+", "+rs.getString("City"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(TblReservations.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            try {
                if(stmt!=null)
                    stmt.close();
            } catch (SQLException ex) {
                Logger.getLogger(QrAvailVehYear.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        Utils.clearComboBoxes(this);
    }
  
}
