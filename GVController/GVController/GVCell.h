//
//  GVCell.h
//  GVController
//
//  Created by Jesper Moberg on 2011-10-16.
//  Copyright (c) 2011 JWMM Software. All rights reserved.
//

#import "AQGridViewCell.h"
#import "BViewController.h"
#import "GVItemProtocol.h"
@interface GVCell : AQGridViewCell{
    id<GVItemProtocol>  _viewController;
}


-(UIView*) getSnapShot: (CGRect) size;
-(UIViewController*) getRealViewController;
-(id) initWithFrame: (CGRect) frame andViewController: (id<GVItemProtocol> ) viewController;
- (CGRect) rectForExpansionStart;
@end
