//
//  GVCell.h
//  GVController
//
//  Created by Jesper Moberg on 2011-10-16.
//  Copyright (c) 2011 JWMM Software. All rights reserved.
//

#import "AQGridViewCell.h"

@interface GVCell : AQGridViewCell


-(UIView*) getSnapShot: (CGRect) size;
-(UIViewController*) getRealView;

@end
