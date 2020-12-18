package com.example.myapplication;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {
    Spinner sp;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

                String[] sexArray={"男","女"};
                sp=(Spinner) findViewById(R.id.sex);
        ArrayAdapter<String> adapter=new ArrayAdapter<String>(this,android.R.layout.simple_spinner_dropdown_item,sexArray);
        sp.setAdapter(adapter);

                Button run=(Button) findViewById(R.id.run);
                run.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View view) {
                        String result;
                        String sex=sp.getSelectedItem().toString();
                        EditText wtxt=(EditText) findViewById(R.id.wtxt);
                        EditText htxt=(EditText) findViewById(R.id.htxt);
                        double w=Double.parseDouble(String.valueOf(wtxt.getText()));
                        double h=Double.parseDouble(String.valueOf(htxt.getText()));
                        double bmivalue=w/Math.pow(h/100,2);
                        if (sex.equals("男")){
                            result=BMIman(bmivalue);
                        }else{
                            result=BMIwoman(bmivalue);
                        }
                        //Toast.makeText(MainActivity.this,result,Toast.LENGTH_LONG).show();
                        Intent intent_deter=new Intent(MainActivity.this,next_activity.class);
                        intent_deter.putExtra("result",result);
                        MainActivity.this.startActivity(intent_deter);

                    }
                });
    }

        public String BMIman(double bmi){
        String result;
            if(bmi<20) result="过轻";
            else if(bmi>=20&&bmi<25) result="适中";
            else if(bmi>=25&&bmi<30) result="过重";
            else if(bmi>=30&&bmi<35) result="肥胖";
            else result="非常肥胖";
            return result;
        }
    public String BMIwoman(double bmi){
        String result;
        if(bmi<19) result="过轻";
        else if(bmi>=19&&bmi<24) result="适中";
        else if(bmi>=24&&bmi<29) result="过重";
        else if(bmi>=29&&bmi<34) result="肥胖";
        else result="非常肥胖";
        return result;
    }

}
