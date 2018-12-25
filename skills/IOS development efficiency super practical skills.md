## 提升iOS开发效率超实用技巧

#### 鼠标 和 触摸板

如果你用的iMac 大部分用的是苹果的鼠标，苹果的鼠标是可以设置智能手势的，这些在系统偏好里面都有教程和设置，大家可以去看一下，每每看到同事还在把iMac的鼠标当做windows的来用，我真想说这个鼠标贵是有道理的。

**鼠标：** 
1.  一个手指右滑返回，在Xcode 中就不用每次都去点击返回上一个类了。
2.  两个手指左\右滑切换桌面，MacOS的多桌面挺好的，可以一个放UI，一个放代码，一个放接口文档等等。
3.  两个手指轻点，相当于F3上面的快捷键Miss Control，很方便。

**触摸板：**
跟鼠标基本一样，切换桌面是三个手指左\右滑，Miss Control 是三个手指向上滑。

好了，废话不多说，直接进入关键的吧，我默认用快捷键的使用频次排序吧，希望大家都能动手尝试下。

#### Xcode 中
1. Shift + Command + O 弹出快速查找文件窗口（这个是字母O，Markdown O之后很像数字0 ）， Shift +Commond + 0 是快速打开官方文档的快捷键。
2.  Shift + Comand + j 定位到文件所在目录，经常配合上面那条快捷键。
3. Control + Command + 上\下 切换 .m 和 .h 。
4. Command + t 新建一个Tab，这个很实用，我平时一般都会建3，4个Tab，关闭Tab 可以用 Command + w 。
5.  如果你不习惯开多个Tab，习惯开多个Xcode窗口，可以用Command + 来互相切换。
6. Control + Command + e 可以批量修改光标所在位置的变量，像这样
![image](https://upload-images.jianshu.io/upload_images/13277235-7dcf574a65dbb0ed.gif?imageMogr2/auto-orient/strip%7CimageView2/2/w/600)
7. Shift + Command + f 打开全局搜索，当然你可以连续按住 Command 键连续按两次 4，也会聚焦到全局搜索，全局搜索这里要说一下，搜索Xcode 不仅仅是支持text匹配，最常用的可以加个 Any 正则，就可以搜出如图中的这种，等等。
![image](https://upload-images.jianshu.io/upload_images/13277235-9c631f5bb424ffa9.jpeg?imageMogr2/auto-orient/strip%7CimageView2/2/w/550)
8. Command + f在类中搜索 ， enter 匹配下一个 Shift + enter 匹配上一个。
9. Command + 上\下\左\右 光标切换到类首，类尾，行首，行尾。
10. alt + 左\右 光标左右移动一个单词。
11. Command + delete 删除光标到行首的内容，同理 alt + delete 删除光标前的一个单词，另外可以先切换到到行尾 用 Command + delete 删除一整行内容。
12. 同理 Command + Shift 和 Command + alt 加方向键就可以选中一整行或者多行了。
13. 选中一段代码 Control + i 会自动缩进。
14. Command + \ 当前行加断点， alt + Command + \ ，新建一个 symbolic breakpoint 。
15. Command + n 新建文件 ， Shift + Command + n 新建工程
16. alt + Command + 左\右 折叠\显示当前块， Shift + alt + Command + 左\右 折叠\显示当前文件中的块。
17. Control + Command + [ 上移，如果没有选中，默认上移当前行， Control + Command + ] 下移。
18. Command + ] 向右缩进，支持多行， Command + [ 向左缩进。
19. Shift + Command + k product 清理， Command + r Run， Command + b 编译。
20. 还有一个重要的快捷键，:point_up:， Control + Command + p 快捷导入，像这样，
![image](https://upload-images.jianshu.io/upload_images/13277235-6064d076051a2274.gif?imageMogr2/auto-orient/strip%7CimageView2/2/w/600)


#### Xcode 窗体相关
1. Shift + Command + Y 隐藏 \ 显示 console 区，但是我建议显示console区 用 Shift + Command + C ，会直接聚焦效果。
2. Command + k console清屏。
3. Control + 1 这个应该很多工程师都没用过:new_moon_with_face:，当然点击小图标也可以。
![image](https://upload-images.jianshu.io/upload_images/13277235-34ebc44a24d9f892.jpeg?imageMogr2/auto-orient/strip%7CimageView2/2/w/550)
如图可以看到所有调用者，导入的文件，被那些导入等等相关依赖。还可以找到最近打开的文件，Recent Files
4. Control + 6 查看当前类的方法列表，这里建议用 pragma mark 来合理分块
5. Command + 1,2,3,4,5,6,7,8,9 切换左边窗体， Command + 0 显示 \ 隐藏左边窗体。
6. alt + Command + 0 显示 \ 隐藏右边窗体，同理 alt + Command + 1,2 等也可以切换
7. Command +, 弹出 Perferences ,可以用 Command + w 隐藏



