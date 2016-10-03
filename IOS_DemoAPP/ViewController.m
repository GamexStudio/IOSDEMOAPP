//
//  ViewController.m
//  IOS_DemoAPP
//
//  Created by TTH on 30/09/16.
//  Copyright © 2016 Gamex. All rights reserved.
//

#import "ViewController.h"
#import "WebAdapter.h"
#import "Constant.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSArray *myStudents = [NSArray arrayWithObjects:@"HTC",@"Apple",@"Nokia",@"HTC",@"Apple",@"Samsung", nil];

   // This will return with unorder List
    NSArray *uniqueArray = [[NSSet setWithArray:myStudents] allObjects];

//    If you need to preserve the ordering and can require 10.7+, you can use an NSOrderedSet.
    
    NSArray *uniqueArrayOrdered = [[NSOrderedSet orderedSetWithArray:myStudents] array];
    
    //
    
    NSArray *uniqueArrayValforKey = [myStudents valueForKeyPath:@"@distinctUnionOfObjects.self"];

    
    
//    NSLog(@"My Uniqu unorder Array %@", uniqueArray);
       NSLog(@"My Uniqu order Array %@", uniqueArrayValforKey);
    
    
    [self getStateList];

}

-(void)getStateList
{
    NSString *rechargeURLString = [NSString stringWithFormat:@"%@%@",ROOT_URL_POST,GETDOCTORSTATEDETAILS];
    
   
    
    [WebAdapter performHttpRequest:nil uri:rechargeURLString completion:^(NSDictionary *dictionary, NSError *error) {
        
        
        
        if (error) {
            // ok, handle the error here
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:Appname message:[error localizedDescription] delegate:nil cancelButtonTitle:@"ok" otherButtonTitles:nil, nil];
            [alert show];
            
        }
        
        else if([dictionary count] > 0)
            
        {     // ok, use the `dictionary` results as you see fit here
            
            
            NSLog(@"Result Set.......%@",dictionary);
            
           
           
           
           
            
           
           
            
        }
        else
        {
            
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:Appname message:@"Please try again!!" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
            [alert show];
            
            
        }
        
        
        
    }];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
