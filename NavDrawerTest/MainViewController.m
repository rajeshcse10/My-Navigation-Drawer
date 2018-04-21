//
//  MainViewController.m
//  NavDrawerTest
//
//  Created by Rajesh Karmaker on 21/4/18.
//  Copyright © 2018 Rajesh Karmaker. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()
@property (strong, nonatomic) CCKFNavDrawer *rootNav;
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.rootNav = (CCKFNavDrawer *)self.navigationController;
    [self.rootNav setCCKFNavDrawerDelegate:self];
    [self addBarButton];
}
-(void) addBarButton{
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"hamburger"] style:(UIBarButtonItemStylePlain) target:self action:@selector(barButtonClicked)];
    self.navigationItem.leftBarButtonItem = item;
}
-(void)barButtonClicked{
    [self.rootNav drawerToggle];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - photoShotSavedDelegate

-(void)CCKFNavDrawerSelection:(NSInteger)selectionIndex
{
    NSLog(@"CCKFNavDrawerSelection = %ld", (long)selectionIndex);
}
@end
