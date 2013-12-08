//
//  NEIcreationViewController.h
//  NEIcreation
//
//  Created by June Scheri on 12/7/13.
//  Copyright (c) 2013 RVC Student. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NEIcreationViewController : UIViewController
<UIAlertViewDelegate, UIActionSheetDelegate>

{
    IBOutlet UIPageControl *pageControl;
    IBOutlet UIImageView *imageView1;
    IBOutlet UIImageView *imageView2;

    UIImageView *tempImageView, *bgImageView;
    int prevPage;
}

@property (nonatomic, retain) UIPageControl *pageControl;
@property (nonatomic, retain) UIImageView *imageView1;
@property (nonatomic, retain) UIImageView *imageView2;


@end
