## 卡片切换

#### 使用方法

```
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = kBackColor;
    
    self.cardView = [[TABCardView alloc] initWithFrame:CGRectMake(40, (kScreenHeight - 320)/2, kScreenWidth - 120, 320) showCardsNumber:4];
    self.cardView.isShowNoDataView = YES;
    self.cardView.noDataView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"占位图"]];
    self.cardView.delegate = self;
    [self.view addSubview:self.cardView];
    
    // 模拟请求数据
    [self performSelector:@selector(getData) withObject:nil afterDelay:3.0];
}

#pragma mark - Target Method
/* 
* CardView 继承自 TABCardView，主要设定单个view的UI,运用到了Masonry 和 SDWebImage
*/
- (void)getData {
    
    NSMutableArray *array = [[NSMutableArray alloc] init];
    for (int i = 0; i < 10; i ++) {
        CardView *view = [[CardView alloc] init];
        [view updateViewWithData:[NSString stringWithFormat:@"%d.jpg",i+1]];
        view.clickBlock = ^{
            NSLog(@"点击了卡片");
        };
        [array addObject:view];
    }
    [self.cardView loadCardViewWithData:array];
}

#pragma mark - TABCardViewDelegate

- (void)tabCardViewCurrentIndex:(NSInteger)index {
    NSLog(@"当前处于卡片数组下标:%ld",(long)index);
}
```
