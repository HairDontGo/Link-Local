package com.example.wtf;

import android.graphics.Color;
import android.os.Bundle;

import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.snackbar.Snackbar;

import androidx.activity.ComponentActivity;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;

import android.view.View;

import android.view.Menu;
import android.view.MenuItem;
import android.widget.*;

public class MainActivity extends AppCompatActivity {
ImageView img;
RelativeLayout bg;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        img=(ImageView) findViewById(R.id.light);
        bg=(RelativeLayout) findViewById(R.id.bg);
        Switch swt=(Switch) findViewById(R.id.swt);
        swt.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton compoundButton, boolean b) {
                //显示开关状态
                boolean isChecked=compoundButton.isChecked();
                if(isChecked){
                    //Toast.makeText(MainActivity.this,"打开",Toast.LENGTH_LONG).show();
                    bg.setBackgroundColor(Color.parseColor("#C3C3C3"));
                    img.setImageDrawable(getResources().getDrawable(R.drawable.on));
                }else {
                    //Toast.makeText(MainActivity.this,"关闭",Toast.LENGTH_LONG).show();
                    bg.setBackgroundColor(Color.parseColor("#FFFFFF"));
                    img.setImageDrawable(getResources().getDrawable(R.drawable.off));
                }
            }
        });
    }
}