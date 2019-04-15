package com.google.sample.cast.hellodemo

import android.support.v7.app.AppCompatActivity
import android.os.Bundle
import io.flutter.facade.Flutter
import kotlinx.android.synthetic.main.activity_main.*
import android.widget.FrameLayout

class MainActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)


        btnFlutterActivity.setOnClickListener{
            val flutterView =  Flutter.createView(
                this@MainActivity,
                lifecycle,
                "route1"
            )

            val layout = FrameLayout.LayoutParams(FrameLayout.LayoutParams.MATCH_PARENT, FrameLayout.LayoutParams.MATCH_PARENT)
            addContentView(flutterView, layout)
        }

        btnFlutterFragment.setOnClickListener{
            val tx = supportFragmentManager.beginTransaction()
            tx.replace(R.id.flContainer, Flutter.createFragment("route2"))
            tx.commit()
        }
    }
}
