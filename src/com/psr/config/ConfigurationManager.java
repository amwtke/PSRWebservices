package com.psr.config;

import java.util.*;

public class ConfigurationManager {
	private static String propertyFileName;
    private static ResourceBundle resourceBundle;
    static {
        propertyFileName = "com/psr/config/config";
        resourceBundle = ResourceBundle.getBundle(propertyFileName);
    }
    public static String getString(String key) {
        if (key == null || key.equals("") || key.equals("null")) {
            return "";
        }
        String result = "";
        try {
            result = resourceBundle.getString(key);
        } catch (MissingResourceException e) {
            e.printStackTrace();
        }
        return result;
    }
}
