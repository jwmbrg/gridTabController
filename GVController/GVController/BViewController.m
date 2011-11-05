//
//  BViewController.m
//  GVController
//
//  Created by Jesper Moberg on 2011-10-16.
//  Copyright (c) 2011 JWMM Software. All rights reserved.
//

#import "BViewController.h"

@implementation BViewController
@synthesize dinMammaLabel;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    NSLog(@"Inited frame: %@", self.view.frame);
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.


}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return YES;
}
#pragma mark - GVItemProtocl implementations
-(UIViewController*)  getViewController{
    
    return self;
}/*
-(UIView *) getSnapShot: (CGRect ) size{
    return nil;
}*/
-(NSString *) getIdentifier{
    return @"BViewController";
}

/*
- (void) expandCellsFromRect: (CGRect) rect ofView: (UIView *) aView
{
	
    // ensure these bits aren't animated
    //[self.view addSubview:aView];
    [UIView setAnimationsEnabled: NO];
    
	//self.gridView.backgroundColor = [UIColor cleaColor];
	self.view.backgroundColor=[UIColor redColor];
	// collect the visible cells' original locations in a new array
    
	
	//_expandedLocations = [locations copy];
	
	// record the starting position

    
	self.view.frame=[aView convertRect: rect toView: self.view];;
    //[aView convertRect: rect toView: self.view];_minLilleSubView=aView;
    //[self.view addSubview:_minLilleSubView];
	// mark that we'll need to expand
	//_readyToExpand = YES;
	
	// re-enable any pending animations
	[UIView setAnimationsEnabled: YES];
}

- (void) viewDidAppear: (BOOL) animated
{
	[super viewDidAppear: animated];
    // CGRect toFrame=self.view.frame;
	
	//if ( _readyToExpand == NO )
	//	return;
    //[self.view setFrame: CGRectMake(30, 40, 200, 500)];
    /*
	[UIView beginAnimations: @"Expanion" context: NULL];
	[UIView setAnimationDuration: 1.0];
	[self.view setBackgroundColor:[UIColor blueColor]];
	[self.view setFrame:CGRectMake(0, 0, 768, 960)];
    //[_minLilleSubView setFrame:CGRectMake(0, 0, 768,  960)
     
    //[self.view setCenter:
    
    
	
	[UIView commitAnimations];
	
	//_readyToExpand = NO;
}
*/
@end
