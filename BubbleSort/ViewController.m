//
//  ViewController.m
//  BubbleSort
//
//  Created by Terra MacBook on 16/8/5.
//  Copyright © 2016年 Jianbing Zhou. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //这是常用的两种排序  我认为第一种就是所谓的选择排序 第二种是冒泡排序
    
    //oc
    //选择排序
    NSMutableArray *sortArray = [NSMutableArray arrayWithObjects:@1,@4,@2,@9,@6,@0,nil];
    /*
    for (int i = 0; i < sortArray.count - 1; i ++) {
        for (int j =i + 1; j < sortArray.count; j ++) {
            int a = [sortArray[i] intValue];
            int b = [sortArray[j] intValue];
            if (a > b) {
                [sortArray replaceObjectAtIndex:i withObject:[NSNumber numberWithInt:b]];
                [sortArray replaceObjectAtIndex:j withObject:[NSNumber numberWithInt:a]];
            }
        }
    }
    for (int x = 0; x < sortArray.count; x ++) {
        NSLog(@"%d",[sortArray[x] intValue]);
    }
     */
    
    //冒泡排序
    
    for (int j = 0; j < sortArray.count -  1; j ++) {
        for (int i = 0; i < sortArray.count - 1 - j; i ++) {
            int a = [sortArray[i] intValue];
            int b = [sortArray[i+1] intValue];
            if (a > b) {
                [sortArray replaceObjectAtIndex:i withObject:[NSNumber numberWithInt:b]];
                [sortArray replaceObjectAtIndex:i+1 withObject:[NSNumber numberWithInt:a]];
            }
        }
    }
    for (int x = 0; x < sortArray.count; x ++) {
        NSLog(@"%d",[sortArray[x] intValue]);
    }

    //c语言
    myMain();
    
}

//选择排序
void selectionSort(int a[],int count) {
    int temp,i,j;
    for (i = 0; i < count -1; i ++) {
        for (j = i + 1; j < count; j ++) {
            if (a[i] > a[j]) {
                temp = a[i];
                a[i] = a[j];
                a[j] = temp;
            }
        }
    }
};

//冒泡排序
void bubbleSort(int a[],int count) {
    int temp,i,j;
    for (i = 0; i < count - 1; i ++) {
        for (j = 0; j < count - 1 -i; j ++) {
            if (a[j] > a[j+1]) {
                temp = a[j];
                a[j] = a[j+1];
                a[j+1] = temp;
            }
        }
    }
}

void myMain() {
    int number[] = {1,9,7,3,0,4,8,2,5,6};
    int count = sizeof(number)/sizeof(int);
    bubbleSort(number, count);
    int z;
    for (z = 0; z < count; z ++) {
        printf("%d\n",number[z]);
    }

    selectionSort(number, count);
    int k ;
    for (k = 0; k < count; k ++) {
        printf("%d",number[k]);
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
