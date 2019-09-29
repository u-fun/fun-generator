package com.fun.common.utils.gen;

import com.fun.project.entity.ClassInfo;

import java.io.IOException;

/**
 * created by DJun on 2019/8/10 23:00
 * desc: 将表处理为classInfo
 */
public class CodeGeneratorTool {
    /**
     * process Table Into ClassInfo
     * @param tableSql table sql
     * @return ClassInfo
     * @throws IOException exception
     */
    public static ClassInfo processTableIntoClassInfo(String tableSql) throws IOException {
        return TableParseUtil.processTableIntoClassInfo(tableSql);
    }

}
