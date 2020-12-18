package com.example.myapplication;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity implements View.OnClickListener{
    String[] items1={"A. 函数 ","B. 标识符","C. 表达式","D. 语句"};
    String[] items2={"A. # ","B. ;","C. //","D. }"};
    String[] items3={"A. 15/2","B. 15/2+2.0","C. 25/5.0","D. 0.5*10"};
    String[] items4={"A. 2⊔3↙ ","B. 2,3↙","C. 2;3 ","D. 2↙3↙"};
    String[] items5={"A. scanf ","B. short","C. _3com_","D. int"};
    String[] items6={"A.a=b=c=d=100; ","B.d++;","C.c+b;","D.d=(c=22)-(b++)"};
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        Button btn1=(Button) findViewById(R.id.btn1);
        Button btn2=(Button) findViewById(R.id.btn2);
        Button btn3=(Button) findViewById(R.id.btn3);
        Button btn4=(Button) findViewById(R.id.btn4);
        Button btn5=(Button) findViewById(R.id.btn5);
        Button btn6=(Button) findViewById(R.id.btn6);
        btn1.setOnClickListener(this);
        btn2.setOnClickListener(this);
        btn3.setOnClickListener(this);
        btn4.setOnClickListener(this);
        btn5.setOnClickListener(this);
        btn6.setOnClickListener(this);
    }

    @Override
    public void onClick(View view) {
        switch (view.getId()){
            case R.id.btn1:
                DialogSingle(items1,R.id.ans1);
                break;
            case R.id.btn2:
                DialogSingle(items2,R.id.ans2);
                break;
            case R.id.btn3:
                DialogSingle(items3,R.id.ans3);
                break;
            case R.id.btn4:
                DialogSingle(items4,R.id.ans4);
                break;
            case R.id.btn5:
                DialogMulti(items5,R.id.ans5);
                break;
            case R.id.btn6:
                DialogMulti(items6,R.id.ans6);
                break;
        }
    }
    public void DialogSingle(String[] outitems, final int txtViewId){
	  final String[] items=outitems;
	  AlertDialog.Builder builder=new AlertDialog.Builder(this);
	  builder.setTitle("选项如下：");
        builder.setItems(items, new DialogInterface.OnClickListener() {
          @Override
            public void onClick(DialogInterface dialogInterface, int i) {
                //Toast.makeText(kaoshi.this, "您选择的是"+items[i], Toast.LENGTH_SHORT).show();
                TextView txtView=(TextView) findViewById(txtViewId);
                txtView.setText("你选择答案："+items[i]);
            }
        });
        AlertDialog dialog=builder.create();
        dialog.show();
	}
    public void DialogMulti(String[] outitems, final int txtViewId){
        final String[] items=outitems;
        final boolean[] checked={false,false,false,false};
        AlertDialog.Builder builder=new AlertDialog.Builder(this);
        builder.setTitle("选项如下：");
        builder.setMultiChoiceItems(items, checked, new DialogInterface.OnMultiChoiceClickListener() {
            @Override
            public void onClick(DialogInterface dialogInterface, int i, boolean b) {
            }
        });
        builder.setPositiveButton("确定", new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialogInterface, int i) {
                String ans="";
                for(int j=0;j<checked.length;j++){
                    if(checked[j])
                        ans+=items[j]+" ";
                }
                TextView txtView=(TextView) findViewById(txtViewId);
                txtView.setText("你选择答案："+ans);
            }
        });
        AlertDialog dialog=builder.create();
        dialog.show();
    }
}
