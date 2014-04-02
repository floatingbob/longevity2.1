//
//  PatientExercisesViewController.h
//  longevity
//
//  Created by Robert Werner on 2014-03-19.
//  Copyright (c) 2014 ECUAD. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PatientExercisesViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>{
    
    
    NSArray *CardioArray ;
    NSArray *BalanceArray ;
    NSArray *StrengthArray ;
    NSArray *ExerciseTitle ;
    NSArray *ExerciseDetail ;
    NSArray *ExerciseRepetitions ;
    NSArray *ExerciseRepetitionsClass ;
    NSArray *ExerciseTimesPerDay ;
    NSArray *ExerciseTimesPerDayClass ;
    
}

@property (weak, nonatomic)     IBOutlet UITableView *tableView1;
@property (weak, nonatomic)     IBOutlet UITableView *tableView2;
@property (weak, nonatomic)     IBOutlet UITableView *tableView3;
@property (weak, nonatomic) IBOutlet UITextView *exerciseDescriptionLabel;
@property (weak, nonatomic)     IBOutlet UILabel *detailDescriptionLabel;
@property (weak, nonatomic) IBOutlet UILabel *repetitions;
@property (weak, nonatomic) IBOutlet UILabel *repititionsClassLabel;
@property (weak, nonatomic) IBOutlet UILabel *timesPerWeekNumber;
@property (weak, nonatomic) IBOutlet UILabel *timesPerWeekClass;


@end
