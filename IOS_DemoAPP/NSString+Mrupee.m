//
//  NSString+Mrupee.m
//  mRupee
//
//  Created by Abhishek Kumar on 03/02/16.
//  Copyright © 2016 TTH. All rights reserved.
//

#import "NSString+Mrupee.h"

@implementation NSString (Mrupee)

- (BOOL)containString:(NSString *)string {
    if ([self rangeOfString:string options:NSCaseInsensitiveSearch].location == NSNotFound) {
        return NO;
    }
    return YES;
}

+ (NSString *)htmlString:(NSString *)imageURL {
    NSString *htmlString = [NSString stringWithFormat:
                            @"<html>"
                            "<head>"
                            "<script type=\"text/javascript\" >"
                            "function display(img){"
                            "var imgOrigH = document.getElementById('image').offsetHeight;"
                            "var imgOrigW = document.getElementById('image').offsetWidth;"
                            "var bodyH = window.innerHeight;"
                            "var bodyW = window.innerWidth;"
                            "if((imgOrigW/imgOrigH) > (bodyW/bodyH))"
                            "{"
                            "document.getElementById('image').style.width = bodyW + 'px';"
                            "document.getElementById('image').style.top = (bodyH - document.getElementById('image').offsetHeight)/2  + 'px';"
                            "}"
                            "else"
                            "{"
                            "document.getElementById('image').style.height = bodyH + 'px';"
                            "document.getElementById('image').style.marginLeft = (bodyW - document.getElementById('image').offsetWidth)/2  + 'px';"
                            "}"
                            "}"
                            "</script>"
                            "</head>"
                            "<body style=\"margin:0;width:100%;height:100%;\" >"
                            "<img id=\"image\" src=\"%@\" onload=\"display()\" style=\"position:relative\" />"
                            "</body>"
                            "</html>",imageURL
                            ];
    return htmlString;

}


@end
