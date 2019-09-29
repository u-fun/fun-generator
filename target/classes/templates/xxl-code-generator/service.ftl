import java.util.Map;

/**
* ${classInfo.classComment}
*
* Created by U-Fun on '${.now?string('yyyy-MM-dd HH:mm:ss')}'.
* desc:
*/
public interface ${classInfo.className}Service {

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
    int delete${classInfo.className}List(String ids);

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
    List<${classInfo.className}> select${classInfo.className}List(${classInfo.className} ${classInfo.className?uncap_first},int pageNum,int pageSize);

  <#--  /**
    * 分页查询
    */
    Map<String,Object> pageList(int offset, int pagesize);
-->
}
