//
//  GVCell.m
//  GVController
//
//  Created by Jesper Moberg on 2011-10-16.
//  Copyright (c) 2011 JWMM Software. All rights reserved.
//

#import "GVCell.h"

@implementation GVCell

-(id) initWithFrame: (CGRect) frame andViewController: (id<GVItemProtocol> ) viewController {
    if(self=[super initWithFrame:frame reuseIdentifier:[viewController getIdentifier]]){
        _viewController=viewController;
    }
   // [self.contentView setBackgroundColor:[UIColor blueColor]];
    //[selfcontentView addSubview:[self getSnapShot:frame]];
  //  NSLog(@"PRINTING HTA LABEL %@",viewController.view);
    
    [self.contentView addSubview:[self getSnapShot:frame] ];
    return self;
    
}
-(UIView*) getSnapShot: (CGRect ) size{
    NSLog(@"Generating snapshot");
    UIView *toReturn=nil;
    if ([_viewController respondsToSelector:@selector(getSnapShot:)]) {
        toReturn=[_viewController getSnapShot:size];
    }else{
        toReturn=[[UIView alloc]initWithFrame:size];
    }
    
    [toReturn setBackgroundColor:[UIColor redColor]];
     return toReturn;
}
-(UIViewController*) getRealViewController{
    return [_viewController getViewController];
}
- (CGRect) rectForExpansionStart
{
	return (self.contentView.bounds);
}
@end
