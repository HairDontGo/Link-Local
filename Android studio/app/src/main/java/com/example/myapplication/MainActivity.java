package com.example.myapplication;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity implements View.OnClickListener{

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        Button btn=(Button) findViewById(R.id.btn_top);
        Button btn2=(Button) findViewById(R.id.btn_top2);
        btn.setOnClickListener(this);
        btn2.setOnClickListener(this);
    }
    public void onClick(View view){
        switch (view.getId()){
            case R.id.btn_top:
                Toast.makeText( this,"你点了",Toast.LENGTH_SHORT).show();
            case R.id.btn_top2:
                Toast.makeText( this,"你点了第二个",Toast.LENGTH_SHORT).show();

        }

    }
}