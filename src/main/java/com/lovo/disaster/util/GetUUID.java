package com.lovo.disaster.util;

import java.util.UUID;

public class GetUUID {

    public static String createUUID(){

        return UUID.randomUUID().toString().replaceAll("-","");
    }

}
