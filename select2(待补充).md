## select2 
### 赋值
- 正确示例 : (ios,Android兼容)  
    ``
    $("#id").val("111").select2();
    ``
- 缺陷示例 : (ios会出现第一项无法选中的情况)  
    ``
    $("#id").val("111").trigger("change");
    ``
