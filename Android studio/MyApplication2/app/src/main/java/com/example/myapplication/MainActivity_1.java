package com.example.myapplication;

import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;

import android.content.DialogInterface;
import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        Button btn1=findViewById(R.id.dialog_button1);
        btn1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                //弹出对话框
                dialog1();
            }
        });
        Button btn2=findViewById(R.id.dialog_button2);
        btn2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                //弹出对话框
                dialog2();
            }
        });
        Button btn3=findViewById(R.id.dialog_button3);
        btn3.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                //弹出对话框
                dialog3();
            }
        });
        Button btn4=findViewById(R.id.dialog_button4);
        btn4.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                //弹出对话框
                dialog4();
            }
        });
        Button btn5=findViewById(R.id.dialog_button5);
        btn5.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                //弹出对话框
                dialog5();
            }
        });
    }
    //最简单的对话框
    public void dialog1(){
        //构造builder对象
        AlertDialog.Builder builder=new AlertDialog.Builder(this);
        //设置对话框的属性
        builder.setTitle("我的对话框");
        builder.setMessage("提示内容");
        //使用builder对象创建AlertDialog
        AlertDialog dialog=builder.create();
        //使用AlerDialog对象，把对话框呈现出来
        dialog.show();
    }
    public void dialog2(){
        //构造builder对象
        AlertDialog.Builder builder=new AlertDialog.Builder(this);
        //设置对话框的属性
        builder.setTitle("我的对话框");
        builder.setMessage("提示内容");
        builder.setPositiveButton("确认", new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialogInterface, int i) {
                Toast.makeText(MainActivity.this, "点击确定", Toast.LENGTH_SHORT).show();
            }
        });
        builder.setNegativeButton("取消",null);

        //使用builder对象创建AlertDialog
        AlertDialog dialog=builder.create();
        //设置对话框点击空白处不会消失
        dialog.setCanceledOnTouchOutside(false);
        //使用AlerDialog对象，把对话框呈现出来
        dialog.show();
    }
    public void dialog3(){
        final String[] ary_name={"小米","华为","锤子","中兴"};
        //构造builder
        AlertDialog.Builder builder=new AlertDialog.Builder(this);
        //设置对话框的属性
        builder.setTitle("请选择品牌");
        builder.setItems(ary_name, new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialogInterface, int i) {
                Toast.makeText(MainActivity.this,ary_name[i],Toast.LENGTH_SHORT).show();
            }
        });
        //使用builder对象创建AlertDialog
        AlertDialog dialog=builder.create();
        //使用AlerDialog对象，把对话框呈现出来
        dialog.show();
    }
    int selectedIndex=0;
    //单选对话框
    public void dialog4(){
        final String[] ary_name={"蓝色","红色","绿色","白色"};
        //构造builder对象
        AlertDialog.Builder builder=new AlertDialog.Builder(this);
        //设置对话框的属性
        builder.setTitle("选择喜欢的颜色");
        builder.setSingleChoiceItems(ary_name, 0, new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialogInterface, int i) {
               selectedIndex=i;
            }
        });
        builder.setPositiveButton("确认", new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialogInterface, int i) {
//                Toast.makeText(MainActivity.this, ary_name[selectedIndex], Toast.LENGTH_SHORT).show();
                LinearLayout bg=(LinearLayout)findViewById(R.id.bg);
                switch (ary_name[selectedIndex]){
                    case"蓝色":
                        bg.setBackgroundColor(Color.parseColor("#2196F3"));
                        break;
                    case "红色":
                        bg.setBackgroundColor(Color.parseColor("#F10202"));
                        break;
                    case "绿色":
                        bg.setBackgroundColor(Color.parseColor("#36F102"));
                        break;
                    case "白色":
                        bg.setBackgroundColor(Color.parseColor("#ffffff"));
                        break;
                }
            }
        });
        //使用builder对象创建AlertDialog
        AlertDialog dialog=builder.create();
        //使用AlerDialog对象，把对话框呈现出来
        dialog.show();
    }
    public void dialog5(){
        final String[] movie={"妇联1","妇联2","妇联3","妇联4"};
        final boolean[] checked={false,false,false,false};

        //构造builder对象
        AlertDialog.Builder builder=new AlertDialog.Builder(this);
        //设置对话框的属性
        builder.setTitle("喜欢的电影");
        builder.setMultiChoiceItems(movie, checked, new DialogInterface.OnMultiChoiceClickListener() {
            @Override
            public void onClick(DialogInterface dialogInterface, int i, boolean b) {

            }
        });
        builder.setPositiveButton("确认", new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialogInterface, int i) {
                String msg="你选择的是";
                for (int j=0;i<checked.length;j++){
                    if (checked[j]) msg+=movie[j]+"，";
                }
                Toast.makeText(MainActivity.this,msg,Toast.LENGTH_SHORT).show();
            }
        });
        //使用builder对象创建AlertDialog
        AlertDialog dialog=builder.create();
        //使用AlerDialog对象，把对话框呈现出来
        dialog.show();
    }
}