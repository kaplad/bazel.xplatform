package bazel.xplatform.awesome;

import androidx.appcompat.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.TextView;

import library.NativeBridge;

public class MainActivity extends AppCompatActivity {

    static {
        System.loadLibrary("bundle");
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        TextView text = (TextView)findViewById(R.id.text_view);
        text.setText(NativeBridge.sayHello());        
    }
}