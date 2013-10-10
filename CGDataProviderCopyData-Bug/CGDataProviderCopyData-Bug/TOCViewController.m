//
//  TOCViewController.m
//  CGDataProviderCopyData-Bug
//
//  Created by Tobias Conradi on 10.10.13.
//  Copyright (c) 2013 Tobias Conradi. All rights reserved.
//

#import "TOCViewController.h"

@interface TOCViewController ()

@end

@implementation TOCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UIImage *image = [UIImage imageNamed:@"testImage"];
    
    self.imageView.image = image;
    
    CFDataRef dataSource = CGDataProviderCopyData(CGImageGetDataProvider(image.CGImage));
    CFRelease(dataSource);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
