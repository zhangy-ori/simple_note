## 泛型

### 1. 为什么使用泛型
早期的Object类型可以接收任意的对象类型，但是在实际的使用中，会有类型转换的问题。也就存在这隐患，所以Java提供了泛型来解决这个安全问题。

### 2. 泛型的定义
**泛型**：是一种把明确类型的工作推迟到**创建对象**或者**调用方法**的时候才去明确的特殊的类型。也就是说在泛型使用过程中，**操作的数据类型被指定为一个参数**，而这种参数类型可以用在类、方法和接口中，分别被称为*泛型类*、*泛型方法*、*泛型接口*。

### 3. 使用泛型的好处
- 避免了类型强转的麻烦。
- 它提供了**编译期的类型安全**，确保在泛型类型（通常为泛型集合）上只能使用正确类型的对象，避免了在运行时出现ClassCastException。

### 4. 泛型的使用
- 泛型类、泛型方法、泛型接口。
- 将数据类型作为参数进行传递。

 1. #### 泛型类
    **在创建对象的时候确定泛型**
    ```
    package simple_note;
    /**
    * 当某个类存在不确定类型的参数时,引入泛型
    * @param <T>  类型未知的t
    * @param <E>  类型未知的e
    */
    public class GenericsDemo<T,E>{
        private T t;
        private E e;

        public GenericsDemo(T t,E e) {
            this.t = t;
            this.e = e;
        }

        public T getT() {
            return t;
        }

        public E getE() {
            return e;
        }
    }
    ```
    ```
    /**泛型类在创建时指定T,E的类型**/
    GenericsDemo<String,Integer> genericsDemo = new GenericsDemo<String,Integer>("1+1+1",111);
    System.out.println(genericsDemo.getT());
    System.out.println(genericsDemo.getE());
    ```

 2. 泛型方法  
    **在调用方法的时候指明泛型的具体类型 。**
    ```
    /**泛型方法**/
    public static <Q> Q genericsMethod(Q q){
        return q;
    }
    ```
1. 泛型接口  
    **泛型接口常被用在各种类的生产器中**  
    1. 定义类时确定泛型的类型
    2. 始终不确定泛型的类型，直到创建对象时，确定泛型的类型

### 5. 泛型通配符
1. 当使用泛型类或者接口时，传递的数据中，泛型类型不确定，可以通过通配符<?>表示。但是一旦使用泛型的通配符后，只能使用Object类中的共性方法，集合中元素自身方法无法使用.
2. 之前设置泛型的时候，实际上是可以任意设置的，只要是类就可以设置。但是在JAVA的泛型中可以指定一个泛型的上限和下限。  
    1. 泛型的上限：  
        格式： ``类型名称 <? extends 类 > 对象名称``  
        意义： 只能接收该类型及其子类
    2. 泛型的下限  
        格式： ``类型名称 <? super 类 > 对象名称``  
        意义： 只能接收该类型及其父类型


