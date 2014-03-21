//
//  PatientExercisesViewController.m
//  longevity
//
//  Created by Robert Werner on 2014-03-19.
//  Copyright (c) 2014 ECUAD. All rights reserved.
//

#import "PatientExercisesViewController.h"

@interface PatientExercisesViewController ()

@end

@implementation PatientExercisesViewController

// Synthesize
@synthesize tableView1,tableView2,tableView3;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    BalanceArray = [NSArray arrayWithObjects:
                    [UIImage imageNamed:@"sidewaysStepping"],
                    [UIImage imageNamed:@"sitToStand"],
                    [UIImage imageNamed:@"tandemWalking"],
                    [UIImage imageNamed:@"reachingWhileStanding"],
                    [UIImage imageNamed:@"toeReachSeated"],
                    [UIImage imageNamed:@"tiptoeChair"],
                    [UIImage imageNamed:@"custom"],
                    nil];
    StrengthArray = [NSArray arrayWithObjects:
                     [UIImage imageNamed:@"strength_1"],
                     [UIImage imageNamed:@"strength_2"],
                     [UIImage imageNamed:@"strength_3"],
                     [UIImage imageNamed:@"strength_4"],
                     [UIImage imageNamed:@"strength_5"],
                     [UIImage imageNamed:@"strength_6"],
                     [UIImage imageNamed:@"custom"],
                     nil];
    CardioArray = [NSArray arrayWithObjects:
                   [UIImage imageNamed:@"cardio_1"],
                   [UIImage imageNamed:@"cardio_2"],
                   [UIImage imageNamed:@"cardio_3"],
                   [UIImage imageNamed:@"cardio_4"],
                   [UIImage imageNamed:@"cardio_5"],
                   [UIImage imageNamed:@"cardio_6"],
                   [UIImage imageNamed:@"custom"],
                   nil];
    
    
    
               
    //[self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table View


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [BalanceArray count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell;
    
    if (tableView == tableView1) {
        cell = [self.tableView1 dequeueReusableCellWithIdentifier:@"cardio"];
        UIImageView *av = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 192, 73)];
        av.image = [CardioArray objectAtIndex:indexPath.row];
        cell.backgroundView = av;
    }
    else if(tableView == tableView2) {
        cell = [self.tableView2 dequeueReusableCellWithIdentifier:@"balance"];
        UIImageView *av = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 192, 73)];
        av.image = [BalanceArray objectAtIndex:indexPath.row];
        cell.backgroundView = av;
        
    }
    else if(tableView == tableView3) {
        cell = [self.tableView3 dequeueReusableCellWithIdentifier:@"strength"];
        UIImageView *av = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 192, 73)];
        av.image = [StrengthArray objectAtIndex:indexPath.row];
        cell.backgroundView = av;
    }
    
    return cell;
}

@end
