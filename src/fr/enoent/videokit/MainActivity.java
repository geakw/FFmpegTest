package fr.enoent.videokit;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;

public class MainActivity extends Activity {
	private static final String TAG = MainActivity.class.getSimpleName();
	
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        
        ((Button) findViewById(R.id.btn_concat)).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				if (Videokit.getInstance().process(new String[] {
						"-y",					// Overwrite output files
						"-i",					// Input file
						"/sdcard/57840.mp4",
						"-s",
						"480x320",
						"/sdcard/iuo_out2.mp4"	// Output file
				})) {
					Log.d(TAG, "Trimming: success");
				} else {
					Log.d(TAG, "Trimming: failure");
				}
			}
		});
    }
}
