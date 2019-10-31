package View;

import Model.Produto;
import Model.ProdutoTableModel;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.imageio.ImageIO;
import javax.swing.ImageIcon;
import javax.swing.JFileChooser;
import javax.swing.JOptionPane;
import javax.swing.filechooser.FileNameExtensionFilter;

public class ProdutoView extends javax.swing.JFrame {
    private ProdutoTableModel ProdutoTM;
    private File file;
    private BufferedImage foto;
    
    /**
     * Creates new form ProdutoView
     */
    public ProdutoView() {
        initComponents();
        setLocationRelativeTo(null);
        setJTableProduto();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabelCodigo = new javax.swing.JLabel();
        jLabelNome = new javax.swing.JLabel();
        jLabelCategoria = new javax.swing.JLabel();
        jLabelID_Estoquista = new javax.swing.JLabel();
        jLabelFabricante = new javax.swing.JLabel();
        jTextFieldCodigo = new javax.swing.JTextField();
        jTextFieldNome = new javax.swing.JTextField();
        jLabelPreco_de_Compra = new javax.swing.JLabel();
        jTextFieldCategoria = new javax.swing.JTextField();
        jTextFieldFabricante = new javax.swing.JTextField();
        jComboBoxID_Estoquista = new javax.swing.JComboBox<>();
        jLabelPreco_de_Venda = new javax.swing.JLabel();
        jButtonUpload_Imagem = new javax.swing.JButton();
        jButtonConsultar = new javax.swing.JButton();
        jButtonInserir = new javax.swing.JButton();
        jScrollPane1 = new javax.swing.JScrollPane();
        jTableProduto = new javax.swing.JTable();
        jTextFieldPreco_de_Compra = new javax.swing.JTextField();
        jTextFieldPreco_de_Venda = new javax.swing.JTextField();
        jLabelImagem = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jLabelCodigo.setText("Código:");

        jLabelNome.setText("Nome:");

        jLabelCategoria.setText("Categoria:");

        jLabelID_Estoquista.setText("ID Estoquista:");

        jLabelFabricante.setText("Fabricante:");

        jLabelPreco_de_Compra.setText("Preço de Compra:");

        jComboBoxID_Estoquista.setModel(new javax.swing.DefaultComboBoxModel<>(Controller.ProdutoControl.getID_Estoquista()));
        jComboBoxID_Estoquista.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jComboBoxID_EstoquistaActionPerformed(evt);
            }
        });

        jLabelPreco_de_Venda.setText("Preço de Venda");

        jButtonUpload_Imagem.setText("Upload Imagem");
        jButtonUpload_Imagem.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonUpload_ImagemActionPerformed(evt);
            }
        });

        jButtonConsultar.setText("Consultar");
        jButtonConsultar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonConsultarActionPerformed(evt);
            }
        });

        jButtonInserir.setText("Inserir");
        jButtonInserir.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonInserirActionPerformed(evt);
            }
        });

        jTableProduto.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "Código", "Nome", "Categoria", "ID Estoquista", "Fabricante", "Preço de Compra", "Preço de Venda"
            }
        ) {
            Class[] types = new Class [] {
                java.lang.Integer.class, java.lang.String.class, java.lang.String.class, java.lang.Integer.class, java.lang.String.class, java.lang.Double.class, java.lang.Double.class
            };

            public Class getColumnClass(int columnIndex) {
                return types [columnIndex];
            }
        });
        jTableProduto.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jTableProdutoMouseClicked(evt);
            }
        });
        jScrollPane1.setViewportView(jTableProduto);

        jLabelImagem.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(41, 41, 41)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 971, Short.MAX_VALUE)
                        .addGap(41, 41, 41))
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jLabelImagem, javax.swing.GroupLayout.PREFERRED_SIZE, 533, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)))
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(jTextFieldNome)
                    .addComponent(jTextFieldCodigo)
                    .addComponent(jTextFieldCategoria)
                    .addComponent(jLabelCodigo, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jLabelNome, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jLabelCategoria, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jLabelID_Estoquista, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jLabelFabricante, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jLabelPreco_de_Compra, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jTextFieldFabricante)
                    .addComponent(jComboBoxID_Estoquista, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jLabelPreco_de_Venda, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jTextFieldPreco_de_Compra)
                    .addComponent(jTextFieldPreco_de_Venda)
                    .addComponent(jButtonConsultar, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jButtonInserir, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jButtonUpload_Imagem, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addGap(42, 42, 42))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(31, 31, 31)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jLabelCodigo)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jTextFieldCodigo, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(jLabelNome)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jTextFieldNome, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(jLabelCategoria)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jTextFieldCategoria, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(jLabelID_Estoquista)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jComboBoxID_Estoquista, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(10, 10, 10)
                        .addComponent(jLabelFabricante)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jTextFieldFabricante, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(jLabelPreco_de_Compra)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jTextFieldPreco_de_Compra, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(10, 10, 10)
                        .addComponent(jLabelPreco_de_Venda)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jTextFieldPreco_de_Venda, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jButtonInserir)
                        .addGap(18, 18, 18)
                        .addComponent(jButtonConsultar)
                        .addGap(18, 18, 18)
                        .addComponent(jButtonUpload_Imagem))
                    .addComponent(jLabelImagem, javax.swing.GroupLayout.PREFERRED_SIZE, 300, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(23, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents
    // ComboBox com ID's dos Estoquistas cadastrados no BD
    private void jComboBoxID_EstoquistaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jComboBoxID_EstoquistaActionPerformed
    }//GEN-LAST:event_jComboBoxID_EstoquistaActionPerformed
    // Botão Inserir
    private void jButtonInserirActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonInserirActionPerformed
        boolean Exception = false;
        double preco_de_compra = 0, preco_de_venda = 0;
        
        if (jTextFieldCodigo.getText().equals("")) {
            JOptionPane.showMessageDialog(this, "O campo 'Código' não pode ser nulo!"); Exception = true;
        } else if (jTextFieldNome.getText().equals("")) {
            JOptionPane.showMessageDialog(this, "O campo 'Nome' não pode ser nulo!"); Exception = true;
        } else if (jComboBoxID_Estoquista.getSelectedItem() == null) {
            JOptionPane.showMessageDialog(this, "Nenhum ID Estoquista selecionado!"); Exception = true;
        } else if (jTextFieldPreco_de_Compra.getText().equals("")) {
            JOptionPane.showMessageDialog(this, "O campo 'Preço de Compra' não pode ser nulo!"); Exception = true;
        } else if (jTextFieldPreco_de_Venda.getText().equals("")) {
            JOptionPane.showMessageDialog(this, "O campo 'Preço de Venda' não pode ser nulo!"); Exception = true;
        } else {
            try { Integer.parseInt(jTextFieldCodigo.getText()); }
            catch (NumberFormatException e) { JOptionPane.showMessageDialog(this, "A entrada: '" + jTextFieldCodigo.getText() + "' não é um inteiro!"); Exception = true; }
            
            try { preco_de_compra = Double.parseDouble(jTextFieldPreco_de_Compra.getText()); }
            catch (NumberFormatException e) { JOptionPane.showMessageDialog(this, "A entrada: '" + jTextFieldPreco_de_Compra.getText() + "' não é um Double!"); Exception = true; }
            
            try { preco_de_venda = Double.parseDouble(jTextFieldPreco_de_Venda.getText()); }
            catch (NumberFormatException e) { JOptionPane.showMessageDialog(this, "A entrada: '" + jTextFieldPreco_de_Venda.getText() + "' não é um Double!"); Exception = true; }
            
            if (!Exception) {
                if (preco_de_venda < preco_de_compra) {
                    JOptionPane.showMessageDialog(this, "Preço de Venda não pode ser menor que Preço de Compra");
                    Exception = true;
                }
            }
        }
        
        if (!Exception) {
            InputStream myInputStream = null;
            boolean[] options = new boolean [3];
            
            if (jTextFieldCategoria.getText().equals(""))       { options [0] = false; } else { options [0] = true; }
            if (jTextFieldFabricante.getText().equals(""))      { options [1] = false; } else { options [1] = true; }
            if (file == null)                                   { options [2] = false; } else {
                    ByteArrayOutputStream myByteArrayOutputStream;
                try {
                    myByteArrayOutputStream = new ByteArrayOutputStream();
                    ImageIO.write(foto, "jpg", myByteArrayOutputStream);
                    myInputStream = new ByteArrayInputStream(myByteArrayOutputStream.toByteArray());
                    options [2] = true;
                } catch (IOException ex) {
                    Logger.getLogger(ProdutoView.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            
            if (Controller.ProdutoControl.existeProduto(Integer.parseInt(jTextFieldCodigo.getText()))) {
                JOptionPane.showMessageDialog(this, "Código do produto já cadastrado no servidor!");
            } else {
                Controller.ProdutoControl.InserirProduto(new Produto(Integer.parseInt(jTextFieldCodigo.getText()),
                                                                     jTextFieldNome.getText(),
                                                                     jTextFieldCategoria.getText(),
                                                                     jTextFieldFabricante.getText(),
                                                                     Double.parseDouble(jTextFieldPreco_de_Compra.getText()),
                                                                     Double.parseDouble(jTextFieldPreco_de_Venda.getText()),
                                                                     Integer.parseInt(jComboBoxID_Estoquista.getSelectedItem().toString()),
                                                                     null),
                                                                     myInputStream,
                                                                     options);
            }
        }
        
        jTextFieldCodigo.setText("");
        jTextFieldNome.setText("");
        jTextFieldCategoria.setText("");
        jTextFieldFabricante.setText("");
        jTextFieldPreco_de_Compra.setText("");
        jTextFieldPreco_de_Venda.setText("");
        jLabelImagem.setIcon(null);
        file = null;
        
        setJTableProduto();
    }//GEN-LAST:event_jButtonInserirActionPerformed
    // Botão Consultar
    private void jButtonConsultarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonConsultarActionPerformed
//
//
//
    }//GEN-LAST:event_jButtonConsultarActionPerformed
    // Ler o 'file' e coloca em um 'BufferedImage' (Isso será escrito em um InputStream que é convertido em um BLOB antes de enviar ao BD)
    private void jButtonUpload_ImagemActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonUpload_ImagemActionPerformed
        selectImagem();
        try {
            foto = ImageIO.read(file);
	} catch (IOException ex) {
            Logger.getLogger(ProdutoView.class.getName()).log(Level.SEVERE, null, ex);
        }
    }//GEN-LAST:event_jButtonUpload_ImagemActionPerformed
    // Seleção de linha da tabela
    private void jTableProdutoMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jTableProdutoMouseClicked
        printImagemproduto(jTableProduto.getSelectedRow());
    }//GEN-LAST:event_jTableProdutoMouseClicked
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
            java.util.logging.Logger.getLogger(ProdutoView.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(ProdutoView.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(ProdutoView.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(ProdutoView.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new ProdutoView().setVisible(true);
            }
        });
    }
    // Inicializando dados na ProdutoView
    public void setJTableProduto () {
        ProdutoTM = new ProdutoTableModel(Controller.ProdutoControl.getProdutos());
        ArrayList <Produto> listaDeProdutos = ProdutoTM.getListaDeProdutos();
        jTableProduto.setModel(ProdutoTM);
    }
    // Seleciona arquivo e coloca em 'file' e exibe arquivo selecionado
    public void selectImagem () {
        file = null;
        JFileChooser fileC = new JFileChooser();
        FileNameExtensionFilter filter =    new FileNameExtensionFilter("Imagens em JPEG", "jpg");
        fileC.addChoosableFileFilter(filter);
        fileC.setAcceptAllFileFilterUsed(false);
        fileC.setDialogType(JFileChooser.OPEN_DIALOG);
        fileC.setCurrentDirectory(new File("/Imagens"));
        fileC.showOpenDialog(this);
        file = fileC.getSelectedFile();
        ImageIcon icon = new ImageIcon(file.getAbsolutePath());
        icon.setImage(icon.getImage().getScaledInstance(jLabelImagem.getWidth(), jLabelImagem.getHeight(), 100));
        jLabelImagem.setIcon(icon);
    }
    // Mostra imagem do produto
    public void printImagemproduto (int index) {
        try {
            Blob blob = ProdutoTM.getListaDeProdutos().get(index).getImagem();
            ImageIcon icon = new ImageIcon(blob.getBytes(1, (int) blob.length()));
            icon.setImage(icon.getImage().getScaledInstance(jLabelImagem.getWidth(), jLabelImagem.getHeight(), 100));
            jLabelImagem.setIcon(icon);
        } catch (SQLException ex) {
            Logger.getLogger(ProdutoView.class.getName()).log(Level.SEVERE, null, ex);
        }
    }    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButtonConsultar;
    private javax.swing.JButton jButtonInserir;
    private javax.swing.JButton jButtonUpload_Imagem;
    private javax.swing.JComboBox<String> jComboBoxID_Estoquista;
    private javax.swing.JLabel jLabelCategoria;
    private javax.swing.JLabel jLabelCodigo;
    private javax.swing.JLabel jLabelFabricante;
    private javax.swing.JLabel jLabelID_Estoquista;
    private javax.swing.JLabel jLabelImagem;
    private javax.swing.JLabel jLabelNome;
    private javax.swing.JLabel jLabelPreco_de_Compra;
    private javax.swing.JLabel jLabelPreco_de_Venda;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTable jTableProduto;
    private javax.swing.JTextField jTextFieldCategoria;
    private javax.swing.JTextField jTextFieldCodigo;
    private javax.swing.JTextField jTextFieldFabricante;
    private javax.swing.JTextField jTextFieldNome;
    private javax.swing.JTextField jTextFieldPreco_de_Compra;
    private javax.swing.JTextField jTextFieldPreco_de_Venda;
    // End of variables declaration//GEN-END:variables
}
