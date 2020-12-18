package com.example.myapplication;

import androidx.appcompat.app.AppCompatActivity;
import androidx.arch.core.util.Function;

import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Spinner;

public class P_City extends AppCompatActivity {

    Spinner Province;
    Spinner City;
    ArrayAdapter<String> adapter;
    ArrayAdapter<String> adapter2;
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_p__city);

        Province=(Spinner) findViewById(R.id.Province);
        City=(Spinner) findViewById(R.id.City);

        Province.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {

            String[] ProvinceData=getResources().getStringArray(R.array.province);
            String[] JScityData=getResources().getStringArray(R.array.JScity);
            String[] GDcityData=getResources().getStringArray(R.array.GDcity);

            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long l) {
                switch (ProvinceData[i]){
                    case "广东":

                        adapter=new ArrayAdapter<String>(P_City.this,
                                android.R.layout.simple_spinner_item,GDcityData);
                        adapter.setDropDownViewResource(android.R.layout.simple_dropdown_item_1line);
                        City.setAdapter(adapter);
                        break;
                    case "江苏":
                        adapter2=new ArrayAdapter<String>(P_City.this,
                                android.R.layout.simple_spinner_item,JScityData);
                        adapter2.setDropDownViewResource(android.R.layout.simple_dropdown_item_1line);
                        City.setAdapter(adapter2);
                        break;
                }
            }

            @Override
            public void onNothingSelected(AdapterView<?> adapterView) {

            }
        });
    }
}