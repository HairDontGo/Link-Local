package com.example.myapplication;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.widget.TextView;
import android.widget.Toast;

import static android.content.Intent.getIntent;

public class next_activity extends Activity {
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.next_activity);

        TextView tex = (TextView) findViewById(R.id.tex);
        Intent intent = getIntent();
        String res = intent.getStringExtra("result");
        tex.setText(res);
    }

}
