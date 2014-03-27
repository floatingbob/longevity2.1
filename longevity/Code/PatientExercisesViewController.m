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
@synthesize detailDescriptionLabel;
@synthesize exerciseDescriptionLabel;

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
    
    ExerciseTitle = [NSArray arrayWithObjects:
                     //Cardio exercise title
                     @"Walking",
                     @"Walking",
                     @"Stair Climb",
                     @"Stair Climb",
                     @"Cardio 5",
                     @"Cardio 6",
                     @"Custom Exercise",
                     
                     //Balance exercise title
                     @"Sideways Stepping",
                     @"Sit-to-Stand",
                     @"Tandem Walking",
                     @"Reaching While Standing",
                     @"Toe Reach",
                     @"Tiptoe 12",
                     @"Custom Exercise",
                     
                     //Strength exercise title
                     @"Arm Raise",
                     @"Biceps Curl",
                     @"Biceps Curl",
                     @"Leg Extend",
                     @"Leg Extend",
                     @"Leg Stretch",
                     @"Custom Exercise",
                     nil];
    
    ExerciseDetail = [NSArray arrayWithObjects:
                      
                      //Cardio exercise scripts begin
                      @"Walking script goes here when available",
                      @"Walking script goes here when available",
                      @"Stair Climb script goes here when available",
                      @"Cardio script goes here when available",
                      @"Cardio script goes here when available",
                      @"Cardio script goes here",
                      @"Custom Exercise",
                      
                      //Balance exercise scripts begin
                      @"Sideways stepping is an excellent way to work on your balance and mobility. If you have difficulty balancing please make sure to take appropriate precautions including placing your fingertips on a wall for balance or involving a family member or friend in this activity in case you lose your balance. This activity begins with you standing with your feet together and knees slight bent. Please step sideways in a slow and controlled manner, being careful not to trip or fall. You will move your lead foot to the side first followed by the other foot that will touch the inside of the lead foot. It is recommended that you perform 10 steps in each direction.",
                      @"The “Sit-to-Stand” exercise is an excellent way to improve your balance, mobility, and lower body strength. Please sit in a chair with your back straight and legs shoulder width apart. To start the movement, raise upwards and stand straight, pause for 2-3 seconds, and then return to the seated position. Please complete 10 – 12 repetitions according to your comfort.",
                      @"During this task, you will stand straight, looking forward, with your arms stretch outwards. This exercise involves walking in a pattern such that the heel of your lead foot touches the toes of your trailing foot. Please make sure to look forward at all times. You can begin with performing at least five steps progressing to more steps (such as 10 or more steps) as you feel comfortable. This activity works on balance and coordination. At the start of a training program, you may wish to use chairs, a countertop, or a wall to assist with your balance. As you feel more comfortable you will be able to complete more steps and rely less on other objects for balance.",
                      @"The “Reaching while Standing” exercise is an excellent way to improve your balance and mobility. If you have difficulty balancing please make sure to take appropriate precautions including reaching towards a wall, a chair, or countertop that you can use to regain your balance. You may also wish to involve a family member or friend in this activity in case you lose your balance. You will begin this activity by standing with your feet together and knees slight bent. While standing, you will attempt to reach as far forward as possible and hold this position for approximately 5 sec. Please begin slowly and be located close to a chair or wall that you can hold onto for support in the case that you lose your balance. Please complete 5-10 repetitions of this activity.",
                      @"Toe reach script goes here when available",
                      @"Tiptoe script goes here when available",
                      @"",
                      
                      //Strength exercise scripts begin
                      @"Arm raise script goes here when available",
                      @"To begin this activity, take a seat in a comfortable chair with your back straight and legs approximately shoulder width apart. Select a weight that you can comfortably lift. Place the weight in your hands with your palms facing away from the body. During this activity be sure to keep your back straight and arms at the side of your body. Start the movement with one arm, and curl the weight towards your chest and then lower slowly. Please remember to breathe normally and to keep your back and wrists straight. Please complete the recommended number of repetitions and sets. For those new to this exercise or previously inactive, you should aim to complete 15-20 repetitions with both arms. Please be sure to complete the repetitions for each arm before using the other arm.",
                      @"Same as above this time with resistance tubing (in the seated and standing positions). Place the resistance tubing under both feet. The shorter the tubing the greater the resistance. You can also use different gauges of tubing. For this exercise, our client is using moderate resistance tubing. Place the tubing in the palms of your hand. You can curl using both arms at the same time or separately. Please remember to breathe normally and to keep your back straight. Please make sure to keep your wrists straight. Complete 15-20 repetitions (to begin a program) with both arms.",
                      @"Leg Extend script goes here when available",
                      @"Leg Extend Seated with resistance script goes here when available",
                      @"Leg Stretch Seated script goes here when available",
                      @"",
                      
                      nil];

    //[self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void) setTableDetail:(NSInteger)tableRow {
    
    // Set Label
    NSString *string = [NSString stringWithFormat:@"%d", tableRow];
    self.detailDescriptionLabel.text = [ExerciseTitle objectAtIndex:tableRow]; //access your arrays that you create now to get specific data
    self.exerciseDescriptionLabel.text = [ExerciseDetail objectAtIndex:tableRow];


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
        av.image = [BalanceArray objectAtIndex:indexPath.row]; //reference this line here to see how you access an array of items.
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

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSInteger cellNumber = indexPath.row;
    
    if (tableView == tableView1) {
        
    }
    else if(tableView == tableView2) {
        cellNumber += [CardioArray count];
        
    }
    else if(tableView == tableView3) {
        cellNumber += [CardioArray count] + [StrengthArray count];
    }
    
    
    // Call Method
    [self setTableDetail:cellNumber];
    
}



@end
