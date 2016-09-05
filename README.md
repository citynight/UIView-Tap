# UIView-Tap
给UIView添加点击事件

给UIView添加一个点击事件的扩展,说明一点在这个分类中如果想添加点击事件分类里面强制`userInteractionEnabled = YES`
使用到的技术,动态添加属性.get`objc_getAssociatedObject`,set`objc_setAssociatedObject`方法.
使用方法:

```
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(150, 400, 100, 100)];
    label.text = @"这是label,点击这里...";
    [label addTapBlock:^(UILabel* obj) {
        NSLog(@"label:\n%@",obj.text);
    }];
    [self.view addSubview:label];
```


