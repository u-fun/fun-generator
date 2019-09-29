import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import java.util.List;

/**
* ${classInfo.classComment}
*
* Created by U-Fun on '${.now?string('yyyy-MM-dd HH:mm:ss')}'.
* desc:
*/
public interface ${classInfo.className}Mapper {

    /**
    * 新增
    */
    int insert${classInfo.className}(${classInfo.className} ${classInfo.className?uncap_first});

    /**
    * 删除
    */
    int delete${classInfo.className}ById(int userId);

    /**
    * 批量删除
    */
    int delete${classInfo.className}List(String[] ids);

    /**
    * 更新
    */
    int update${classInfo.className}(${classInfo.className} ${classInfo.className?uncap_first});

    /**
    * 查询
    */
    ${classInfo.className} select${classInfo.className}ById(int userId);

    /**
    * 分页条件查询
    */
    List<${classInfo.className}> select${classInfo.className}List(${classInfo.className} ${classInfo.className?uncap_first});


<#-- /**
 * 分页查询Data
 */
 List<${classInfo.className}> pageList(@Param("offset") int offset,
                                              @Param("pagesize") int pagesize);

 /**
 * 分页查询Count
 */
 int pageListCount(@Param("offset") int offset,
                          @Param("pagesize") int pagesize);-->

}
