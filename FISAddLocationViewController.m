//
//  FISAddLocationViewController.m
//  locationTrivia-dataStore
//
//  Created by Yoseob Lee on 6/18/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import "FISAddLocationViewController.h"
#import "FISLocationsTableViewController.h"
#import "FISLocationsDataManager.h"
#import "FISLocation.h"

@interface FISAddLocationViewController ()
@property (strong, nonatomic) FISLocationsDataManager *locationsDataManager;

@property (weak, nonatomic) IBOutlet UILabel *locationNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *locationLatitudeLabel;
@property (weak, nonatomic) IBOutlet UILabel *locationLongitudeLabel;
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *latitudeTextField;
@property (weak, nonatomic) IBOutlet UITextField *longitudeTextField;

- (IBAction)saveButtonTapped:(id)sender;

@end

@implementation FISAddLocationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.locationsDataManager = [FISLocationsDataManager sharedLocationsDataManager];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(dismissKeyboard)];
    [self.view addGestureRecognizer:tap];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dismissKeyboard
{
    [self.nameTextField resignFirstResponder];
    [self.latitudeTextField resignFirstResponder];
    [self.longitudeTextField resignFirstResponder];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)saveButtonTapped:(id)sender {
    
    NSInteger inputLatitude = [self.latitudeTextField.text integerValue];
    NSNumber *newLatitude = [NSNumber numberWithInteger:inputLatitude];
    
    NSInteger inputLongitude = [self.longitudeTextField.text integerValue];
    NSNumber *newLongitude = [NSNumber numberWithInteger:inputLongitude];
    
    FISLocation *newLocation = [[FISLocation alloc]initWithName:self.nameTextField.text latitude:newLatitude longitude:newLongitude];
    
    [self.locationsDataManager.locations addObject:newLocation];
    
                    // Need to add new location object with properties from text field
    [self.navigationController popViewControllerAnimated:YES]; // will pop after save button
    
}
@end
