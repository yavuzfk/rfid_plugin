package com.tagin.ura4_uhf_plugin.uhf_ura4_plugin.helper;


public interface UHFListener {
    void onRead(String tagsJson);

    void onConnect(boolean isConnected, int powerLevel);

}