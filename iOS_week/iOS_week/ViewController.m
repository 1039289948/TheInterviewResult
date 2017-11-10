//
//  ViewController.m
//  iOS_week
//
//  Created by Mobiyun on 2017/11/10.
//  Copyright © 2017年 冀凯旋. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    /**
     
     weak表其实是一个hash（哈希）表，Key是所指对象的地址，Value是weak指针的地址数组
     weak是弱引用，所引用对象的计数器不会加一，并在引用对象被释放的时候自动被设置为nil。通常用于解决循环引用问题。
     
     Runtime维护了一个weak表，用于存储指向某个对象的所有weak指针。weak表其实是一个hash（哈希）表，Key是所指对象的地址，Value是weak指针的地址（这个地址的值是所指对象的地址）数组。
     

     1、初始化时：runtime会调用objc_initWeak函数，初始化一个新的weak指针指向对象的地址。
     
     *注意：objc_initWeak函数有一个前提条件：就是object必须是一个没有被注册为__weak对象的有效指针。而value则可以是null，或者指向一个有效的对象。*
     
     2、添加引用时：objc_initWeak函数会调用 objc_storeWeak() 函数， objc_storeWeak() 的作用是更新指针指向，创建对应的弱引用表。
     
     3、释放时，调用clearDeallocating函数。clearDeallocating函数首先根据对象地址获取所有weak指针地址的数组，然后遍历这个数组把其中的数据设为nil，最后把这个entry从weak表中删除，最后清理对象的记录。
     
     */
    

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
