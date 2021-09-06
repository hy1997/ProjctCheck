package com.jy.project.utils;


import com.jy.project.vo.ProjectInfoVO;

import java.lang.reflect.Field;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class VO2ResultMap {
    public static void main(String[] args) {

        final Class clazz = ProjectInfoVO.class;

        final Field[] declaredFields = clazz.getDeclaredFields();
        Map<String,String> resultMap = new LinkedHashMap<>();
        for (Field declaredField : declaredFields) {
            if(!Collection.class.isAssignableFrom(declaredField.getType())) {
                final String fieldName = declaredField.getName();
                resultMap.put(fieldName,camel4underline(fieldName));
            }
        }

        System.out.println("<resultMap id=\""+clazz.getSimpleName()+"ResultMap\" type=\""+clazz.getName()+"\" >");
        for(Map.Entry<String, String> entry:resultMap.entrySet()){
            System.out.println("<result column=\"" + entry.getValue() + "\" property=\"" + entry.getKey() + "\" />");
        }
        System.out.println("</resultMap>");

        System.out.println("---------------------------");
        for (String fieldName : resultMap.keySet()) {
            System.out.println(camel4underline(fieldName)+",");
        }

    }
    public static String camel4underline(String param){
        Pattern p=Pattern.compile("[A-Z]");
        if(param==null ||param.equals("")){
            return "";
        }
        StringBuilder builder=new StringBuilder(param);
        Matcher mc=p.matcher(param);
        int i=0;
        while(mc.find()){
            builder.replace(mc.start()+i, mc.end()+i, "_"+mc.group().toLowerCase());
            i++;
        }

        if('_' == builder.charAt(0)){
            builder.deleteCharAt(0);
        }
        return builder.toString();
    }
}
