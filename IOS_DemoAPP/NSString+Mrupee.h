//
//  NSString+Mrupee.h
//  mRupee
//
//  Created by Abhishek Kumar on 03/02/16.
//  Copyright © 2016 TTH. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Mrupee)

- (BOOL)containString:(NSString *)string;

+ (NSString *)htmlString:(NSString *)imageURL;
@end
