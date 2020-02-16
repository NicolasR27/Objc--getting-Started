//
//  ViewController.m
//  Objc -getting Started
//
//  Created by Nicolas Rios on 2/16/20.
//  Copyright © 2020 Nicolas Rios. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

NSString*cellId =@"cellId";


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationController.title = @"Courses";
    self.navigationController.navigationBar.prefersLargeTitles = YES;
    
    
    [self.tableView registerClass:UITableViewCell.class
           forCellReuseIdentifier:cellId];
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:
(NSInteger)section{
    return 10;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView
                             dequeueReusableCellWithIdentifier:cellId forIndexPath:indexPath];
    cell.textLabel.text =@"Course Name";
    return cell;
    
    
}









@end
