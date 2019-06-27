package com.lovo.disaster.warehouse;

import com.lovo.disaster.warehouse.service.IShowDrugService;
import com.lovo.disaster.warehouse.service.impl.ShowDrugServiceImpl;

public class Test {
    public static void main(String[] args) {
        IShowDrugService showDrugService =new ShowDrugServiceImpl();
        showDrugService.addDurg("杀鼠迷",
                3,4,"用于捕杀各种鼠类",50);
    }

}
