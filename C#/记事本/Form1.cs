using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.IO;

namespace 记事本
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        bool b=false;
        bool s=true ;
        string filepath;
        private void 文件ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if ((sender == 新建ToolStripMenuItem) || (sender == 新建NToolStripButton))
            {
                if (!richTextBox1.Text.Trim().Equals("")) 
                { 
                    if (change) 
                    { 
                        if (MessageBox.Show("是否保存", "是否保存修改过后的文件", MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == DialogResult.OK) 
                        {
                            save();
                        } 
                    } 
                    richTextBox1.Clear();
                    isFirst = true; 
                    change = false; 
                    filepath = "";
                }
            } 
            if ((sender == 打开ToolStripMenuItem) || (sender == 打开OToolStripButton))
            {
                if ((!richTextBox1.Text.Trim().Equals("")) && change) 
                { 
                    if (MessageBox.Show("是否保存", "是否保存的文件", MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == DialogResult.OK)
                    {
                        save();
                    } 
                }
                if (打开ToolStripMenuItem.ShowDialog() == DialogResult.OK)
                {
                    richTextBox1.Clear(); 
                    isFirst = true; 
                    change = false;
                    filepath = 打开ToolStripMenuItem.FileName;
                    //MessageBox.Show(filepath); richTextBox1.Text = File.ReadAllText(filepath); this.Text = filepath; addToolStripMenuItem(filepath); } }
                    richTextBox1.Text = File.ReadAllText(filepath);
                    this.Text = filepath;
                    addToolStripMenuItem(filepath);
                }}
                    if ((sender == 保存SToolStripButton) || (sender == 保存ToolStripMenuItem)) 
                    { save(); }
                    if (sender == 另存为ToolStripMenuItem)
                    {
                        if (!richTextBox1.Text.Trim().Equals("")) 
                        { saveAs(); }
                    }
                }

private void saveAs()
{
 	throw new NotImplementedException();
}

private void addToolStripMenuItem(string filepath)
{
 	throw new NotImplementedException();
}

private void save()
{
 	throw new NotImplementedException();
}
            
public  bool change { get; set; }
public  bool isFirst { get; set; }

        private void statusStrip1_ItemClicked(object sender, ToolStripItemClickedEventArgs e)
        {
        
        }}
        }
        public void save() 
        { 
            if (change) 
            {
                if (!(filepath.Trim().Equals("") || filepath == null)) 
                { 
                    File.WriteAllText(filepath, richTextBox1.Text); 
                    addToolStripMenuItem(filepath);
                    isFirst = true; change = false; 
                }
                else
                { saveAs(); }
            }
        }
        public void saveAs() 
        { 
            if (saveFileDialog1.ShowDialog() == DialogResult.OK) 
            {
                filepath = saveFileDialog1.FileName;
                File.WriteAllText(filepath, richTextBox1.Text);
                addToolStripMenuItem(filepath);
            } 
        }
        private void 退出ToolStripMenuItem_Click(object sender, EventArgs e) 
        { Close(); }

        private void 新建ToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        
    }
}
