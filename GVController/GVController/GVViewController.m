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
@synthesize GVCells=_GVCells;


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.GVCells=[[NSMutableArray alloc]initWithCapacity:1];
    }
    return self;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
   
    NSLog(@"why is my rray %@", self.GVCells);
    [self.gridView setBackgroundColor:[UIColor clearColor]];
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
   // static NSString * PlainCellIdentifier = @"GVCellIdentifier";

    NSLog(@"looking for some cells");
    AQGridViewCell * cell = nil;
    
    GVCell * plainCell =[self.GVCells objectAtIndex:index];/*= (GVCell *)[aGridView dequeueReusableCellWithIdentifier: PlainCellIdentifier];
    
    if ( plainCell == nil )
    {
        plainCell = [[GVCell alloc] initWithFrame: CGRectMake(0.0, 0.0, 200.0, 250)
                                        reuseIdentifier: PlainCellIdentifier 
                                        andViewController: [[BViewController alloc] initWithNibName:@"BViewController" bundle:nil]];
        plainCell.selectionGlowColor = [UIColor grayColor];
    }
    [cell setBackgroundColor:[UIColor blueColor]];*/
    cell=plainCell;
    return ( cell );
}

- (void) gridView: (AQGridView *) gridView didSelectItemAtIndex: (NSUInteger) index
{
    
    GVCell * cell = (GVCell *)[self.gridView cellForItemAtIndex: index];
	CGRect expandFromRect = [cell rectForExpansionStart];
    UIViewController * controller = [cell getRealViewController];
    controller.view.frame = self.gridView.frame;
//	[controller viewWillAppear: NO];

    [UIView setAnimationsEnabled: NO];
    
	
    
    controller.view.frame=[cell.contentView convertRect: expandFromRect toView: self.view];;
	[UIView setAnimationsEnabled: YES];
    
    
    
    
    
	//[controller viewDidAppear: NO];
    
    [self.navigationController pushViewController:cell.getRealViewController animated:NO];
    
    
    
    
	[UIView beginAnimations: @"Expanion" context: NULL];
	[UIView setAnimationDuration: 1.0];
//	[cell.getRealViewController.view setBackgroundColor:[UIColor blueColor]];
	[cell.getRealViewController.view setFrame:CGRectMake(0, 0, 768, 960)];
    //[_minLilleSubView setFrame:CGRectMake(0, 0, 768,  960)
    
    //[self.view setCenter:
    
    
	
	[UIView commitAnimations];

    /*GVCell * cell = (GVCell*)[self.gridView cellForItemAtIndex: index];
    UIView *toAnimate= cell.getRealViewController.view;

    [cell.getRealViewController setWantsFullScreenLayout:NO];
  
    

    [UIView beginAnimations:nil context:nil];
      [toAnimate setFrame:[cell.contentView convertRect:[cell rectForExpansionStart] toView:toAnimate]];
    [UIView setAnimationDuration:3.0];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    


   // [cell.getRealViewController.view setBackgroundColor:[UIColor greenColor]];

    
    
    [self.navigationController pushViewController:cell.getRealViewController animated:YES];
  
   // [UIView setAnimationsEnabled: YES];
    
    [UIView commitAnimations];
  */
    //[self.navigationController pushViewController:cell.getRealViewController animated:NO];
}

- (NSUInteger) numberOfItemsInGridView: (AQGridView *) gridView;{
    NSLog(@"returnin % d", [self.GVCells count]);
    
    return [self.GVCells count];
}
- (CGSize) portraitGridCellSizeForGridView: (AQGridView *) aGridView
{
    return ( CGSizeMake(256.0, 320.0) );
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return YES;
}/*
- (void) addGVCells:(NSSet *)objects{
    for (GVCell* gvcell in objects) {
        [self.GVCells addObject:gvcell];
    }
    [self.view setNeedsLayout];
}*/

- (void) addGVCell:(id<GVItemProtocol> ) toAdd{
    NSLog(@"adding sell");
    GVCell* plainCell = [[GVCell alloc] initWithFrame: CGRectMake(0.0, 0.0, 200.0, 250)
                            andViewController:toAdd];
    [self.GVCells addObject:plainCell];
    
    NSLog(@"count is %@",self.GVCells );

  
    
  
}

@end
