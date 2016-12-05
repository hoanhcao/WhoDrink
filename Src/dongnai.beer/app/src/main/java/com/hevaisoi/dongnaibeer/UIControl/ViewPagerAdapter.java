package com.hevaisoi.dongnaibeer.UIControl;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by ERP on 11/28/2016.
 */

public class ViewPagerAdapter extends FragmentPagerAdapter {
    private final List<Fragment> mFragmentList = new ArrayList<>();
    private final List<String> mFragmentTitleList = new ArrayList<>();

    public ViewPagerAdapter(FragmentManager fm) {
        super(fm);
    }

    @Override
    public Fragment getItem(int position) {
        if (mFragmentList==null) return null;
        if(position<0||position>mFragmentList.size()) return  null;

        return mFragmentList.get(position);
    }

    @Override
    public int getCount() {
        if (mFragmentTitleList==null) return 0;
        return mFragmentTitleList.size();
    }

    @Override
    public CharSequence getPageTitle(int position) {
        if (mFragmentTitleList==null) return null;
        if(position<0||position>mFragmentTitleList.size()) return  null;

        return mFragmentTitleList.get(position);
    }

    public void addFragment(Fragment fragment, String title) {
        mFragmentList.add(fragment);
        mFragmentTitleList.add(title);
    }
}
