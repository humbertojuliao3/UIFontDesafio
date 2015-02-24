//
//  ViewController.m
//  UIFontDesafio
//
//  Created by Joaquim Pessôa Filho on 23/02/15.
//  Copyright (c) 2015 Joaquim Pessôa Filho. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [_caixaTexto resignFirstResponder];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)alterar:(id)sender {
    [_nome setText:[_caixaTexto text]];
    [_caixaTexto resignFirstResponder];
}

- (IBAction)mudarFont:(id)sender {
    UIButton *btn=(UIButton *)sender;
    [_nome setFont:[UIFont fontWithName:[btn titleLabel].text size:17]];
}
@end
