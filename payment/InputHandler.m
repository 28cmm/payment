//
//  InputHandler.m
//  payment
//
//  Created by Yilei Huang on 2019-01-11.
//  Copyright © 2019 Joshua Fanng. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler
-convertToString:(NSString*)input{
    NSLog(@"%@",input);
    char inputChar[255];
    fgets(inputChar, 255, stdin);
    NSString *mystring =[NSString stringWithUTF8String:inputChar];
    return [mystring stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}
@end
