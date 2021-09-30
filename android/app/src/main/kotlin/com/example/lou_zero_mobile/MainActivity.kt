package com.example.lou_zero_mobile
import com.microsoft.appcenter.AppCenter;
import com.microsoft.appcenter.analytics.Analytics;
import com.microsoft.appcenter.crashes.Crashes;

import io.flutter.embedding.android.FlutterActivity

class MainActivity: FlutterActivity() {
    @Override
    void onCreate(){
        AppCenter.start(getApplication(), "2bfa1527-5bfa-41d8-9105-fa7e23d2bd75",
                  Analytics.class, Crashes.class);
    }
}
