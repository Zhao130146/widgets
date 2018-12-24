# PhotoBrowse

#一、功能介绍
1. 基于PhotoKit框架集成的自定义相册

#二、注意事项
1. 首先我们在进入控制器的时候，获取你需要显示的相册，再在主控制器显示第一个相册。
2. 在加载图片的时候，我建议大家将加载的方法放在cell中完成，但是要保证cell的重用问题，千万不要把图片解析到model中，小心撑炸APP。
3. 可以做一个单例，用于记录选中的图片、选中的总数等等。


#三、如何用
1. 
```
[LYFPhotosManager showPhotosManager:self withMaxImageCount:10 withAlbumArray:^(NSMutableArray<LYFPhotoModel *> *albumArray) {
NSLog(@"%@", albumArray);
}];
```
#三、链接
1. https://www.jianshu.com/p/687157a50426
