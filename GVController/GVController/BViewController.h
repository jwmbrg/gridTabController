//
//  BViewController.h
//  GVController
//
//  Created by Jesper Moberg on 2011-10-16.
//  Copyright (c) 2011 JWMM Software. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GVItemProtocol.h"
@interface BViewController : UIViewController <GVItemProtocol>{
    UILabel* dinMammaLabel;
}
@property(nonatomic, retain) IBOutlet UILabel *dinMammaLabel;
@end
