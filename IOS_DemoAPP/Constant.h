//
//  Constant.h
//  mRupee
//
//  Created by Abhishek Kumar on 26/11/15.
//  Copyright © 2015 TTH. All rights reserved.
//


//static const CGFloat KEYBOARD_ANIMATION_DURATION = 0.3;
//static const CGFloat MINIMUM_SCROLL_FRACTION = 0.2;
//static const CGFloat MAXIMUM_SCROLL_FRACTION = 1;
//static const CGFloat PORTRAIT_KEYBOARD_HEIGHT = 216;
//static const CGFloat LANDSCAPE_KEYBOARD_HEIGHT = 162;


#define PATH @"<link href=\"http://52.172.156.35:8080/CSS/styles-mrupee.css\" rel=\"stylesheet\" type=\"text/css\">"


#define DEFAULT_BG_COLOR [UIColor darkGrayColor]//[UIColor colorWithRed:128.0/255 green:128.0/255 blue:128.0/255 alpha:1.0]
#define DEFAULT_TABBG_COLOR [UIColor colorWithRed:237.0/255 green:27.0/255 blue:47.0/255 alpha:1.0]
#define DEFAULT_ORANGE_COLOR [UIColor colorWithRed:241.0/255 green:87.0/255 blue:49.0/255 alpha:1.0]
#define DEFAULT_RED [UIColor colorWithRed:93.0/255 green:11.0/255 blue:18.0/255 alpha:1.0]


#define TEXTBOXBORDER_COLOR [UIColor colorWithRed:186/255 green:186/255 blue:186/255 alpha:1.0]


#define UIColorFromRGB(rgbValue) [UIColor \
colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0].CGColor

//Then use any Hex value





#define SOURCE          @"b3JpZ2luYWwgU3RyaW5nIGJlZm9yZSBiYXNlNjQgZW5jb2RpbmcgaW4gSmF2YQ=="
#define AUTHORIZATION   @"b3JpZ2luYWwgU3RyaW5nIGJlZm9yZSBiYXNlNjQgZW5jb2RpbmcgaW4gSmF2YQ=="

#define SOURCE_KEY          @"Source"
#define AUTHORIZATION_KEY   @"Authorization"

#define MapKey @"MAKRViewControllerMapAnnotationViewReuseIdentifier"

#define SERVER_ISSUE_MESSAGE @"We are experiencing some connectivity issues. Please try again."


#define IS_IPHONE4          (IS_IPHONE && [[UIScreen mainScreen] bounds].size.height == 480.0f)
#define IS_OS_8_OR_LATER    ([[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0)


// AppName

#define Appname @"Gamex"


///POST///
#define ROOT_URL_POST @"http://52.172.156.35:8080/RPGWebService/"




//docter
#define GETDOCTORSTATEDETAILS @"GetDoctorStateDetails?"

