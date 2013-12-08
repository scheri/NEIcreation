//
//  NEIcreationViewController.m
//  NEIcreation
//
//  Created by June Scheri on 12/7/13.
//  Copyright (c) 2013 RVC Student. All rights reserved.
//

#import "NEIcreationViewController.h"

@interface NEIcreationViewController ()

@end

@implementation NEIcreationViewController

- (void) alertView:(UIAlertView *)alertView clickedButtonAtIndex:
(NSInteger)buttonIndex {
    NSLog (@"%d", buttonIndex);
}


@synthesize pageControl;
@synthesize imageView1, imageView2;

- (void)viewDidLoad
{
    {
        //---initialize the first imageview to display an image---
        [imageView1 setImage:[UIImage imageNamed:@"01_egg calc.jpg"]];
        tempImageView = imageView2;
        
        //---make the first imageview visible and hide the second---
        [imageView1 setHidden:NO];
        [imageView2 setHidden:YES];
        
        //---add the event handler for the page control---
        [pageControl addTarget:self action:@selector (pageTurning:)
              forControlEvents: UIControlEventValueChanged];
        
        prevPage = 0;
        
        [super viewDidLoad];
    }
    
    //---when the page control's value is changed---
    -[(void) pageTurning: (UIPageControl *) pageTurning {
   // - (void)pageControl: (UIPageControl *) pageControl {
        //---get the page number you can turning to---
        NSInteger nextPage = [PageControl currentPage];
        
        switch (nextPage) {
            case 0:
                [tempImageView setImage:
                 [UIImage imageNamed:@"01_egg calc.jpg"]];
                break;
                
            case 1:
                [tempImageView setImage:
                 [UIImage imageNamed:@"02_basket.jpg"]];
                break;
                
            case 2:
                [tempImageView setImage:
                 [UIImage imageNamed:@"03_eggs.jpg"]];
                break;
                
            case 3:
                [tempImageView setImage:
                 [UIImage imageNamed:@"04_bird1.jpg"]];
                break;
                
            case 4:
                [tempImageView setImage:
                 [UIImage imageNamed:@"05_bird2.jpg"]];
                break;
                
            case 5:
                [tempImageView setImage:
                 [UIImage imageNamed:@"06_ios7colors.jpg"]];
                break;
                
            case 6:
                [tempImageView setImage:
                 [UIImage imageNamed:@"07_bird.jpg"]];
                break;
                
            case 7:
                [tempImageView setImage:
                 [UIImage imageNamed:@"08_egg.jpg"]];
                break;
                
            case 8:
                [tempImageView setImage:
                 [UIImage imageNamed:@"09_fluid.jpg"]];
                break;
                
            default:
                break;
                
        }
        
        //---switch the two imageview views---
        if (tempImageView.tag == 0) { //---imageView1---
            tempImageView = imageView2;
            bgImageView = imageView1;
        }
        
        else {                        //---imageView2---
            tempImageView = imageView1;
            bgImageView = imageView2;
        }
        
        UIViewAnimationOptions transitionOption;
        if (nextPage > prevPage)
            //---if moving from left to right---
            transitionOption =  UIViewAnimationOptionTransitionFlipFromLeft;
        else
            //---if moving from right to left---
            transitionOption = UIViewAnimationOptionTransitionFlipFromRight;
        
        //---animate by flipping the images---
        [UIView transitionWithView:tempImageView
                          duration:2.5
                           options:transitionOption
                        animations:^{
                            [tempImageView setHidden:YES];
                        }
                        completion:NULL];
        [UIView transitionWithView:bgImageView
                          duration:2.5
                           options:transitionOption
                        animations:^{
                            [bgImageView setHidden:NO];
                        }
         
                        completion:NULL];
        prevPage = nextPage;
    }
    
    - (void)dealloc {
        [pageControl release];
        [imageView1 release];
        [imageView2 release];
        [super dealloc];
        
            
}

@end
