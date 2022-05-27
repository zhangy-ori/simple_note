## select2 
### 1. 赋值  
**初始化时用trigger("change")来赋值**  
**直接对标签赋值时,需要再次调用select2,这样就可以回显值所对应的选项**

- 正确示例  
```
$("#id").val("111").select2();
```
```
var select2 = $("#id").select2({
    data:d
}).val(null).trigger("change");
```
- 缺陷示例(ios会出现第一项无法选中的情况)  
```
$("#id").val("111").trigger("change");
```
- 错误示例(二次调用select2())  
```
var select2 = $("#id").select2({
    data:d
}).val(null).select2();
```



