package com.hevaisoi.dongnaibeer;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.MapView;

/**
 * Created by ERP on 11/28/2016.
 */

public class DrinkGroupFragment extends Fragment {
    private WhoDrinkApp myApp;
    private GoogleMap googleMap;
    MapView mMapView;

    public DrinkGroupFragment() {
        MainActivity myActivity = (MainActivity) getActivity();
        if (myActivity != null) {
            myApp = (WhoDrinkApp) myActivity.getApplication();
        }

    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }

    @Nullable
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
//        return super.onCreateView(inflater, container, savedInstanceState);
        return inflater.inflate(R.layout.group_dinker_tab, container, false);

    }
}
