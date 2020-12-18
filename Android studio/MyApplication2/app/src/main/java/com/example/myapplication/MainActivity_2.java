package com.example.myapplication;

import android.os.Bundle;
import android.widget.ListView;

import androidx.appcompat.app.AppCompatActivity;

import java.util.ArrayList;
import java.util.List;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        ListView list=(ListView) findViewById(R.id.list);
        List<Fruit> fruits=GetDate();
        FruitAdapter adapter=new FruitAdapter(this,R.layout.activity_main,fruits);
        list.setAdapter(adapter);

    }
    public List<Fruit> GetDate(){
        List<Fruit> fruitList=new ArrayList<Fruit>();
        Fruit fruit=null;
        for (int i=0;i<4;i++)
        {
            fruit=new Fruit("Apple",R.drawable.apple);
            fruitList.add(fruit);
            fruit=new Fruit("Banana",R.drawable.banana);
            fruitList.add(fruit);
            fruit=new Fruit("Orange",R.drawable.orange);
            fruitList.add(fruit);
            fruit=new Fruit("Strawberry",R.drawable.strawberry);
            fruitList.add(fruit);
        }
        return fruitList;
    }
}