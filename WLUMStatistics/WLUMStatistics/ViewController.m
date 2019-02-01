//
//  ViewController.m
//  WLUMStatistics
//
//  Created by three stone 王 on 2019/1/5.
//  Copyright © 2019年 three stone 王. All rights reserved.
//

#import "ViewController.h"
#import "WLUMConfig.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSData *data = [@"1234" dataUsingEncoding:NSUTF8StringEncoding];
    // 0000 0001  ===>>> 1  ===>>>0x31
    // 0000 0010  ===>>> 2  ===>>>0x32
    // 0000 0011  ===>>> 3  ===>>>0x33
    // 0000 0100  ===>>> 4  ===>>>0x34
    
    NSLog(@"字符%c  16进制%x   整形%d" ,'1','1','1');
    
    NSArray *arr = @[@"1234"];
    
    NSData *aaa = [NSJSONSerialization dataWithJSONObject:arr options:(NSJSONWritingPrettyPrinted) error:nil];
    
    NSString *jsonstr = [[NSString alloc] initWithData:aaa encoding:NSUTF8StringEncoding];
    
    NSString *bbb = @"[\n  \"1234\"  \n]";
    
    NSDictionary *dict = @{@"1": @"1234"};
    
    NSData *eeee = [NSJSONSerialization dataWithJSONObject:dict options:(NSJSONWritingPrettyPrinted) error:nil];
    
    NSString *dictstr = [[NSString alloc] initWithData:eeee encoding:NSUTF8StringEncoding];
    
    NSString *ccc = @"5b0a2020 2231323334220a5d";
    
//    @"{\n  \"1\" : \"1234\"\n}";
 
    NSLog(@"%@   %@ %@  %@  %@    %@   %@",data,aaa,jsonstr,[jsonstr dataUsingEncoding:NSUTF8StringEncoding] ,bbb ,ccc,[dictstr dataUsingEncoding:NSUTF8StringEncoding]);
    
    //    NSLog(@"%@  %d",data,kWLASIIHexChars[41]);
}

@end
