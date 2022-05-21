## 设计模式

[参考文档-菜鸟教程](https://www.runoob.com/design-pattern/design-pattern-tutorial.html)

- 简介
    > 设计模式（Design pattern）代表了最佳的实践，通常被有经验的面向对象的软件开发人员所采用。设计模式是软件开发人员在软件开发过程中面临的一般问题的解决方案。这些解决方案是众多软件开发人员经过相当长的一段时间的试验和错误总结出来的。

    >设计模式是一套被反复使用的、多数人知晓的、经过分类编目的、代码设计经验的总结。使用设计模式是为了重用代码、让代码更容易被他人理解、保证代码可靠性。 毫无疑问，设计模式于己于他人于系统都是多赢的，设计模式使代码编制真正工程化，设计模式是软件工程的基石，如同大厦的一块块砖石一样。项目中合理地运用设计模式可以完美地解决很多问题，每种模式在现实中都有相应的原理来与之对应，每种模式都描述了一个在我们周围不断重复发生的问题，以及该问题的核心解决方案，这也是设计模式能被广泛应用的原因。

- 主要用途
    - 开发人员的共同平台
    > 设计模式提供了一个标准的术语系统，且具体到特定的情景。例如，单例设计模式意味着使用单个对象，这样所有熟悉单例设计模式的开发人员都能使用单个对象，并且可以通过这种方式告诉对方，程序使用的是单例模式。

    - 最佳的实践
    > 设计模式已经经历了很长一段时间的发展，它们提供了软件开发过程中面临的一般问题的最佳解决方案。学习这些模式有助于经验不足的开发人员通过一种简单快捷的方式来学习软件设计。

- 设计模式的类型
    >总共有 23 种设计模式。这些模式可以分为三大类：创建型模式（Creational Patterns）、结构型模式（Structural Patterns）、行为型模式（Behavioral Patterns）。当然，我们还会讨论另一类设计模式：J2EE 设计模式。

    1. 创建型模式  
       > 这些设计模式提供了一种在创建对象的同时隐藏创建逻辑的方式，而不是使用 new 运算符直接实例化对象。这使得程序在判断针对某个给定实例需要创建哪些对象时更加灵活。

       - 工厂模式（Factory Pattern）
       - 抽象工厂模式（Abstract Factory Pattern）
       - 单例模式（Singleton Pattern）
       - 建造者模式（Builder Pattern）
       - 原型模式（Prototype Pattern）

    2. 结构型模式
       > 这些设计模式关注类和对象的组合。继承的概念被用来组合接口和定义组合对象获得新功能的方式。

       - 适配器模式（Adapter Pattern）
       - 桥接模式（Bridge Pattern）
       - 过滤器模式（Filter、Criteria Pattern）
       - 组合模式（Composite Pattern）
       - 装饰器模式（Decorator Pattern）
       - 外观模式（Facade Pattern）
       - 享元模式（Flyweight Pattern）
       - 代理模式（Proxy Pattern）

    3. 行为型模式
       > 这些设计模式特别关注对象之间的通信。

       - 责任链模式（Chain of Responsibility Pattern）
       - 命令模式（Command Pattern）
       - 解释器模式（Interpreter Pattern）
       - 迭代器模式（Iterator Pattern）
       - 中介者模式（Mediator Pattern）
       - 备忘录模式（Memento Pattern）
       - 观察者模式（Observer Pattern）
       - 状态模式（State Pattern）
       - 空对象模式（Null Object Pattern）
       - 策略模式（Strategy Pattern）
       - 模板模式（Template Pattern）
       - 访问者模式（Visitor Pattern） 

    4. J2EE 模式
       > 这些设计模式特别关注表示层。这些模式是由 Sun Java Center 鉴定的。

       - MVC 模式（MVC Pattern）
       - 业务代表模式（Business Delegate Pattern）
       - 组合实体模式（Composite Entity Pattern）
       - 数据访问对象模式（Data Access Object Pattern）
       - 前端控制器模式（Front Controller Pattern）
       - 拦截过滤器模式（Intercepting Filter Pattern）
       - 服务定位器模式（Service Locator Pattern）
       - 传输对象模式（Transfer Object Pattern） 

- 设计模式之间的关系  
    ![设计模式之间的关系](../images/design_model_001.jpg)

- 设计模式的六大原则
  1. 开闭原则（Open Close Principle）
    > 开闭原则的意思是：**对扩展开放，对修改关闭**。在程序需要进行拓展的时候，不能去修改原有的代码，实现一个热插拔的效果。简言之，是为了使程序的扩展性好，易于维护和升级。想要达到这样的效果，我们需要使用接口和抽象类，后面的具体设计中我们会提到这点。 

  2. 里氏代换原则（Liskov Substitution Principle）
    > 里氏代换原则是面向对象设计的基本原则之一。 里氏代换原则中说，任何基类可以出现的地方，子类一定可以出现。LSP 是继承复用的基石，只有当派生类可以替换掉基类，且软件单位的功能不受到影响时，基类才能真正被复用，而派生类也能够在基类的基础上增加新的行为。里氏代换原则是对开闭原则的补充。实现开闭原则的关键步骤就是抽象化，而基类与子类的继承关系就是抽象化的具体实现，所以里氏代换原则是对实现抽象化的具体步骤的规范。

  3. 依赖倒转原则（Dependence Inversion Principle）
    > 这个原则是开闭原则的基础，具体内容：针对接口编程，依赖于抽象而不依赖于具体。       

  4. 接口隔离原则（Interface Segregation Principle）
    > 使用多个隔离的接口，比使用单个接口要好。它还有另外一个意思是：降低类之间的耦合度。由此可见，其实设计模式就是从大型软件架构出发、便于升级和维护的软件设计思想，它强调降低依赖，降低耦合。

  5. 迪米特法则，又称最少知道原则（Demeter Principle）
    > 最少知道原则是指：一个实体应当尽量少地与其他实体之间发生相互作用，使得系统功能模块相对独立。

  6. 合成复用原则（Composite Reuse Principle）
    > 合成复用原则是指：尽量使用合成/聚合的方式，而不是使用继承。

- 学习顺序  
  <table><thead><tr><th>顺序</th><th>设计模式</th><th>常用程度</th><th>适用层次</th><th>引入时机</th><th>复杂度</th><th>变化</th><th>实现</th><th>体现的原则</th></tr></thead><tbody><tr><td>1</td><td>Factory Method</td><td>很常用</td><td>代码级</td><td>编码时</td><td>简单</td><td>子类的实例化</td><td>对象的创建工作延迟到子类</td><td>开闭原则</td></tr><tr><td>2</td><td>Singleton</td><td>很常用</td><td>代码级、应用级</td><td>设计时、编码时</td><td>简单</td><td>唯一实例</td><td>封装对象产生的个数</td><td></td></tr><tr><td>3</td><td>Facade</td><td>很常用</td><td>应用级、构架级</td><td>设计时、编码时</td><td>简单</td><td>子系统的高层接口</td><td>封装子系统</td><td>开闭原则</td></tr><tr><td>4</td><td>Template Method</td><td>很常用</td><td>代码级</td><td>编码时、重构时</td><td>简单</td><td>算法子步骤的变化</td><td>封装算法结构</td><td>依赖倒置原则</td></tr><tr><td>5</td><td>Abstract Factory</td><td>较常用</td><td>应用级</td><td>设计时</td><td>较复杂</td><td>产品家族的扩展</td><td>封装产品族系列内容的创建</td><td>开闭原则</td></tr><tr><td>6</td><td>Composite</td><td>较常用</td><td>代码级</td><td>编码时、重构时</td><td>较复杂</td><td>复杂对象接口的统一</td><td>统一复杂对象的接口</td><td>里氏代换原则</td></tr><tr><td>7</td><td>Proxy</td><td>较常用</td><td>应用级、构架级</td><td>设计时、编码时</td><td>简单</td><td>对象访问的变化</td><td>封装对象的访问过程</td><td>里氏代换原则</td></tr><tr><td>8</td><td>Command</td><td>较常用</td><td>应用级</td><td>设计时、编码时</td><td>较简单</td><td>请求的变化</td><td>封装行为对对象</td><td>开闭原则</td></tr><tr><td>9</td><td>Observer</td><td>较常用</td><td>应用级、构架级</td><td>设计时、编码时</td><td>较简单</td><td>通讯对象的变化</td><td>封装对象通知</td><td>开闭原则</td></tr><tr><td>10</td><td>Strategy</td><td>较常用</td><td>应用级</td><td>设计时</td><td>一般</td><td>算法的变化</td><td>封装算法</td><td>里氏代换原则</td></tr><tr><td>11</td><td>Builder</td><td>一般</td><td>代码级</td><td>编码时</td><td>一般</td><td>对象组建的变化</td><td>封装对象的组建过程</td><td>开闭原则</td></tr><tr><td>12</td><td>Adapter</td><td>一般</td><td>代码级</td><td>重构时</td><td>一般</td><td>对象接口的变化</td><td>接口的转换</td><td></td></tr><tr><td>13</td><td>Bridge</td><td>一般</td><td>代码级</td><td>设计时、编码时</td><td>一般</td><td>对象的多维度变化</td><td>分离接口以及实现</td><td>开闭原则</td></tr><tr><td>14</td><td>Decorator</td><td>一般</td><td>代码级</td><td>重构时</td><td>较复杂</td><td>对象的组合职责</td><td>在稳定接口上扩展</td><td>开闭原则</td></tr><tr><td>15</td><td>Iterator</td><td>一般</td><td>代码级、应用级</td><td>编码时、重构时</td><td>较简单</td><td>对象内部集合的变化</td><td>封装对象内部集合的使用</td><td>单一职责原则</td></tr><tr><td>16</td><td>Mediator</td><td>一般</td><td>应用级、构架级</td><td>编码时、重构时</td><td>一般</td><td>对象交互的变化</td><td>封装对象间的交互</td><td>开闭原则</td></tr><tr><td>17</td><td>Memento</td><td>一般</td><td>代码级</td><td>编码时</td><td>较简单</td><td>状态的辅助保存</td><td>封装对象状态的变化</td><td>接口隔离原则</td></tr><tr><td>18</td><td>State</td><td>一般</td><td>应用级</td><td>设计时、编码时</td><td>一般</td><td>对象状态的变化</td><td>封装与状态相关的行为</td><td>单一职责原则</td></tr><tr><td>19</td><td>Visitor</td><td>一般</td><td>应用级</td><td>设计时</td><td>较复杂</td><td>对象操作变化</td><td>封装对象操作变化</td><td>开闭原则</td></tr><tr><td>20</td><td>Prototype</td><td>不太常用</td><td>应用级</td><td>编码时、重构时</td><td>较简单</td><td>实例化的类</td><td>封装对原型的拷贝</td><td>依赖倒置原则</td></tr><tr><td>21</td><td>Flyweight</td><td>不太常用</td><td>代码级、应用级</td><td>设计时</td><td>一般</td><td>系统开销的优化</td><td>封装对象的获取</td><td></td></tr><tr><td>22</td><td>Chain of Resp.</td><td>不太常用</td><td>应用级、构架级</td><td>设计时、编码时</td><td>较复杂</td><td>对象的请求过程</td><td>封装对象的责任范围</td><td></td></tr><tr><td>23</td><td>Interpreter</td><td>不太常用</td><td>应用级</td><td>设计时</td><td>较复杂</td><td>领域问题的变化</td><td>封装特定领域的变化</td></tr></tbody></table>   



