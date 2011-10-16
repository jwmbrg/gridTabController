//
//  GVViewController.m
//  GVController
//
//  Created by Jesper Moberg on 2011-10-16.
//  Copyright (c) 2011 JWMM Software. All rights reserved.
//

#import "GVViewController.h"

@implementation GVViewController
@synthesize gridView=_gridView;
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    
    [self.gridView setBackgroundColor:[UIColor greenColor]];
    self.gridView.autoresizingMask=UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;
    self.gridView.autoresizesSubviews=YES;
    self.gridView.delegate=self;
    self.gridView.dataSource=self;
    
    [self.gridView reloadData];
    
    
    
	// Do any additional setup after loading the view, typically from a nib.
}
#pragma mark - View lifecycle



- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (AQGridViewCell *) gridView: (AQGridView *) aGridView cellForItemAtIndex: (NSUInteger) index{
    static NSString * PlainCellIdentifier = @"GVCellIdentifier";

    NSLog(@"looking for some cells");
    AQGridViewCell * cell = nil;
    
    GVCell * plainCell = (GVCell *)[aGridView dequeueReusableCellWithIdentifier: PlainCellIdentifier];
    
    if ( plainCell == nil )
    {
        plainCell = [[GVCell alloc] initWithFrame: CGRectMake(0.0, 0.0, 200.0, 250)
                                        reuseIdentifier: PlainCellIdentifier 
                                        andViewController: [[BViewController alloc] initWithNibName:@"BViewController" bundle:nil]];
        plainCell.selectionGlowColor = [UIColor grayColor];
    }
    [cell setBackgroundColor:[UIColor blueColor]];
    cell=plainCell;
    return ( cell );
}

- (void) gridView: (AQGridView *) gridView didSelectItemAtIndex: (NSUInteger) index
{
    GVCell * cell = (GVCell*)[self.gridView cellForItemAtIndex: index];
    [self.navigationController pushViewController:cell.getRealViewController animated:YES];
}

- (NSUInteger) numberOfItemsInGridView: (AQGridView *) gridView;{
    return 9;
}
- (CGSize) portraitGridCellSizeForGridView: (AQGridView *) aGridView
{
    return ( CGSizeMake(256.0, 320.0) );
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return YES;
}

@end
