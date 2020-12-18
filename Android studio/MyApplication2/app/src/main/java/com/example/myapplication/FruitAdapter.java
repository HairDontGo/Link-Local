package com.example.myapplication;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import java.util.List;

public class FruitAdapter extends ArrayAdapter {
    private int resourceId;
    public FruitAdapter(@NonNull Context context, int resource, @NonNull List objects) {
        super(context, resource, objects);
        resourceId=resource;
    }

    //重写getView(),这个方法在每个子项被滚到屏幕内都会被调用
    @NonNull
    @Override
    public View getView(int position, @Nullable View convertView, @NonNull ViewGroup parent) {
        Fruit fruit=(Fruit)this.getItem(position);//获取当前子项的Fruit实例
        /*动态加载自定义的子项布局文件*/
        View view=LayoutInflater.from(getContext()).inflate(resourceId,parent,false);
        //获取子项布局中的控件，并添加内容
        ImageView img =(ImageView) view.findViewById(R.id.img);
        TextView name=(TextView)view.findViewById(R.id.name);
        img.setImageResource(fruit.getImage());
        name.setText(fruit.getName());
        return view;
    }
}
