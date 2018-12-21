//
//  yyview.m
//  WMZCode
//
//  Created by admin on 2018/12/21.
//  Copyright © 2018年 wmz. All rights reserved.
//

#import "yyview.h"

@interface yyview ()<UIScrollViewDelegate>
{
    UIScrollView * _scrollView;
    UIImageView  * _imageView;
}

@end


@implementation yyview

- (UIView *)setViewWith:(UIImage *)image{
    
    if (self == nil) {

        //1添加 UIScrollView
        //设置 UIScrollView的位置与屏幕大小相同
        _scrollView=[[UIScrollView alloc] initWithFrame:self.bounds];
        [self addSubview:_scrollView];
        
        //2添加图片
        //有两种方式
        //(1)一般方式
        //    UIImageView  *imageview=[[UIImageView alloc]init];
        //    UIImage *image=[UIImage imageNamed:@"minion"];
        //    imageview.image=image;
        //    imageview.frame=CGRectMake(0, 0, image.size.width, image.size.height);
        
        //(2)使用构造方法
//        UIImage *image=[UIImage imageNamed:@"minion"];
        _imageView=[[UIImageView alloc] initWithImage:image];
        //调用initWithImage:方法，它创建出来的imageview的宽高和图片的宽高一样
        [_scrollView addSubview:_imageView];
        
        //设置UIScrollView的滚动范围和图片的真实尺寸一致
        _scrollView.contentSize=image.size;
        
        
        //设置实现缩放
        //设置代理scrollview的代理对象
        _scrollView.delegate=self;
        //设置最大伸缩比例
        _scrollView.maximumZoomScale=2.0;
        //设置最小伸缩比例
        _scrollView.minimumZoomScale=0.5;
    }

    return  self;
}

//告诉scrollview要缩放的是哪个子控件
-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return _imageView;
}

- (void)scrollViewWillBeginZooming:(UIScrollView *)scrollView withView:(UIView *)view{
}

- (void)scrollViewDidZoom:(UIScrollView *)scrollView{
}

@end
