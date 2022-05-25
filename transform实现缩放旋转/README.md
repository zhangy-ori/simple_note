## CSS-transform实现元素的缩放,移动及旋转 
### 1. transform 简介
> Transform属性应用于元素的2D或3D转换。这个属性允许你将元素旋转，缩放，移动，倾斜等。
> #### [Transform相关文档](https://www.runoob.com/cssref/css3-pr-transform.html)

### 2. 缩放,移动及旋转实现
- css  
    ```
        <style type="text/css">
            .icon_d {
                position: fixed;
                bottom: 59px;
                background-color: #0d0d0d;
                width: 100%;
                height: 30px;
                display: flex;
                justify-content: space-around;
                z-index: 3000;
                cursor: pointer;
            }

            .icon_d .icon {
                width: 30px;
                cursor: pointer;
            }
        </style>
    ```

- html
    ```
        <body>
            <div class="weui-gallery__img" style="width:50px;height:100px;background: linear-gradient(red, blue);"></div>
            <div class="icon_d">
                <img class="icon up" src="https://images.chinawaytek.com/chinaway_icon/preview_up.png">
                <img class="icon down" src="https://images.chinawaytek.com/chinaway_icon/preview_down.png">
                <img class="icon left" src="https://images.chinawaytek.com/chinaway_icon/preview_left.png">
                <img class="icon right" src="https://images.chinawaytek.com/chinaway_icon/preview_right.png">
                <img class="icon enlarge" src="https://images.chinawaytek.com/chinaway_icon/preview_enlarge.png">
                <img class="icon narrow" src="https://images.chinawaytek.com/chinaway_icon/preview_narrow.png">
                <img class="icon rotate" src="https://images.chinawaytek.com/chinaway_icon/preview_rotate.png">
            </div>
        </body>
    ```

- js
    ```
        const translate_standard = 30;
        const scale_standard = 0.2;
        const degree_standard = 90;
        let scale, degree, translateX, translateY;
        /**
        * transform工具栏显示与隐藏
        * 目标元素初始化
        */
        $(document).on("click", ".weui-gallery", function () {
            $(".icon_d").hide();
        })
        $(document).on("click", ".weui-uploader__file", function () {
            $(".icon_d").show();
            element_init($(".weui-gallery__img"));
        })
        /**
        * 指定目标元素 ele
        * 绑定点击事件
        */

        $(".icon_d .icon").each(function () {
            let $this = $(this);
            $this.on("click", function () {
                if ($this.hasClass("up")) {
                    translateY -= translate_standard;
                }
                if ($this.hasClass("down")) {
                    translateY += translate_standard;
                }
                if ($this.hasClass("left")) {
                    translateX -= translate_standard;
                }
                if ($this.hasClass("right")) {
                    translateX += translate_standard;
                }
                if ($this.hasClass("enlarge")) {
                    scale += scale_standard;
                }
                if ($this.hasClass("narrow")) {
                    scale -= scale_standard;
                }
                if ($this.hasClass("rotate")) {
                    degree += degree_standard;
                    if (degree === 360) {
                        degree = 0;
                    }
                }
                transform($(".weui-gallery__img"));
            });
        });

        function element_init($ele) {
            scale = 1;
            degree = 0;
            translateX = 0;
            translateY = 0;
            transform($ele);
        }

        /**
        *适应旋转的transform
        */
        function transform($ele) {
            let x, y;
            if (degree === 0) {
                x = translateX;
                y = translateY;
            }
            if (degree === 90) {
                x = translateY;
                y = -translateX;
            }
            if (degree === 180) {
                x = -translateX;
                y = -translateY;
            }
            if (degree === 270) {
                x = -translateY;
                y = translateX;
            }

            let transform_param = "rotate(" + degree + "deg) scale(" + scale + ") translate(" + x + "px, " + y + "px)";
            $ele.css("transform", transform_param);
        }
    ```

