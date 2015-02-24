//
//  ViewController.h
//  UIFontDesafio
//
//  Created by Joaquim Pessôa Filho on 23/02/15.
//  Copyright (c) 2015 Joaquim Pessôa Filho. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *caixaTexto;
@property (weak, nonatomic) IBOutlet UILabel *nome;
- (IBAction)alterar:(id)sender;
- (IBAction)mudarFont:(id)sender;
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event;



@end

