//
//  PatientExercisesViewController.h
//  longevity
//
//  Created by Robert Werner on 2014-03-19.
//  Copyright (c) 2014 ECUAD. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PatientExercisesViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>{
    
    
    NSArray *CardioArray;
    NSArray *BalanceArray;
    NSArray *StrengthArray;
//    NSArray *ExerciseDetailTextArray;
}

@property (weak, nonatomic)     IBOutlet UITableView *tableView1;
@property (weak, nonatomic)     IBOutlet UITableView *tableView2;
@property (weak, nonatomic)     IBOutlet UITableView *tableView3;

@property (weak, nonatomic)     IBOutlet UILabel *detailDescriptionLabel;

@end
