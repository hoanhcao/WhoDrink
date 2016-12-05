package com.hevaisoi.dongnaibeer;

import android.support.v4.app.Fragment;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.text.method.ScrollingMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import org.w3c.dom.Text;

/**
 * Created by ERP on 11/28/2016.
 */

public class DrinkerFragment extends Fragment {
    public DrinkerFragment() {

    }

    @Override
    public void onResume() {
        super.onResume();
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }

    @Nullable
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View v =inflater.inflate(R.layout.drinker_tab, container,false);
        TextView txtTest = (TextView) v.findViewById(R.id.txtTest);
        if(txtTest!=null){
            txtTest.setMovementMethod(new ScrollingMovementMethod());
        }
        return v;
    }
}
