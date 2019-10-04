package com.fun.common.utils.gen;

import com.fun.project.entity.GenTable;

import java.io.IOException;

/**
 * created by U-Fun on 2019/8/10 23:00
 * desc: 将表处理为genTable
 */
public class CodeGeneratorTool {
    /**
     * process Table Into GenTable
     * @param tableSql table sql
     * @return GenTable
     * @throws IOException exception
     */
    public static GenTable processTableIntoClassInfo(String tableSql) throws IOException {
        return TableParseUtil.processTableIntoClassInfo(tableSql);
    }

}
