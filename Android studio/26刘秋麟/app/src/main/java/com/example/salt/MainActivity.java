package com.example.salt;

import androidx.appcompat.app.AppCompatActivity;

import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import android.view.View;
import android.widget.Button;

public class MainActivity extends AppCompatActivity implements View.OnClickListener {

    private MyServiceConnection connection;

    class MyServiceConnection implements ServiceConnection{

        @Override
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {

        }

        @Override
        public void onServiceDisconnected(ComponentName componentName) {

        }
    }

    ;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        Button bind=findViewById(R.id.bind);
        Button unbind=findViewById(R.id.unbind);
        Button start=findViewById(R.id.start);
        Button stop=findViewById(R.id.stop);
        Button finsh=findViewById(R.id.finsh);
        bind.setOnClickListener(this);
        unbind.setOnClickListener(this);
        start.setOnClickListener(this);
        stop.setOnClickListener(this);
        finsh.setOnClickListener(this);

//        初始化链接实例
        if (connection==null) connection=new MyServiceConnection();
    }

    @Override
    public void onClick(View view) {
        switch (view.getId()){
            case R.id.bind:
                Log.i("TAG","bind onClick");
                Intent intent=new Intent(this,MyBindService.class);
                bindService(intent,connection,BIND_AUTO_CREATE);
                break;
            case R.id.unbind:
                Log.i("TAG","unbind onClick");
                unbindService(connection);
                break;
            case R.id.finsh:
                Log.i("TAG","finish onClick");
                MainActivity.this.finish();
                break;
            case R.id.start:
                Intent intent1=new Intent(this,MyBindService.class);
                startService(intent1);
                break;
            case R.id.stop:
                Intent intent2=new Intent(this,MyBindService.class);
                stopService(intent2);
                break;
        }
    }
}