package com.example.myapplication;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Spinner;

import java.util.ArrayList;
import java.util.List;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        Spinner city=(Spinner) findViewById(R.id.city);
        //建立数据源，1通过list集合
        List<String> cityData=new ArrayList<String>();
        cityData.add("河源");
        cityData.add("梅州");
        cityData.add("苏州");
        cityData.add("杭州");
        //建立数据源，2通过Array集合
        String[] cityArray={"北","上","广"};
        //or获取数据源，从xml文件获取
        String[] cityXml=getResources().getStringArray(R.array.city);
        //把数据源转载到Adapter（转换器）
        ArrayAdapter<String> adapter=new ArrayAdapter<String>(this,
                android.R.layout.simple_spinner_item,
                cityData);
        adapter.setDropDownViewResource(android.R.layout.simple_dropdown_item_1line);
        //把spinner与Adapted绑定
        city.setAdapter(adapter);
        //选择事件监听
        city.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long l) {

            }

            @Override
            public void onNothingSelected(AdapterView<?> adapterView) {

            }
        });
    }
}