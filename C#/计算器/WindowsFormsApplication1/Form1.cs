using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace WindowsFormsApplication1
{
    public partial class Form1 : Form
    {
        double db1Acc;
        double db1Sec;
        bool blnClear, blnFrstOpen;
        string strOper;
        private Button obj;

        public Form1()
        {
            InitializeComponent();
            db1Acc = 0;
            db1Sec = 0;
            blnFrstOpen = true;
            blnClear = true;
            strOper = new string('=', 1);
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            tetCalc.Text = "";
            label1.Text = "";

        }

        private void button14_Click(object sender, EventArgs e)
        {

        }

        private void button18_Click(object sender, EventArgs e)
        {

        }

        private void button13_Click(object sender, EventArgs e)
        {

        }

        private void button16_Click(object sender, EventArgs e)
        {

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {

        }

        private void button7_Click(object sender, EventArgs e)
        {
            if (blnClear)
                tetCalc.Text = "1";
            Button btn = (Button)obj;
            tetCalc.Text += btn.Text;
            label1.Text += tetCalc.Text;
            db1Sec = Convert.ToDouble(tetCalc.Text);
            blnClear = false;
        }

        private void button2_Click(object obj, EventArgs ea)
        {
            if (blnClear)
                tetCalc.Text = "";
            Button btn=(Button )obj;
            tetCalc.Text += btn.Text;
            label1.Text += tetCalc.Text;
            if (tetCalc.Text == ".")
                tetCalc.Text = "0.";
            db1Sec = Convert.ToDouble(tetCalc.Text);
            blnClear = false;
        }
        private void btn_Oper(object obj, EventArgs ea)
        {
            Button tmp = (Button)obj;
            strOper = tmp.Text;
            if (blnFrstOpen)
                db1Acc = db1Sec;
            else
                calc();
            blnFrstOpen = false;
            blnClear = true;
        }

        private void calc()
        {
            throw new NotImplementedException();
        }
        private void button6_Click(object obj, EventArgs ea)
        {
           
                calc();
            
        }

       
    }
}
