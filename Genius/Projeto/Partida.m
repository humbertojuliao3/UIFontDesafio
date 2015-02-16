//
//  Partida.m
//  Projeto
//
//  Created by Guilherme Ferreira de Souza on 2/13/15.
//  Copyright (c) 2015 Liliane Bezerra Lima. All rights reserved.
//

#import "Partida.h"
#include <stdlib.h>

@implementation Partida



- (instancetype)init {
    
    
    
    self = [super init];
    
    if (self) {
        
        NSMutableArray *a=[[NSMutableArray alloc] initWithCapacity:200];
        
        _sequencia = a;
        
        _rodada = 0;
        
    }
    
    return self;
    
}



- (void)aumentarSequencia {
    
    NSInteger numAleatorio;
    
    numAleatorio = (random() %3) + 1;
    
    [_sequencia insertObject:[NSNumber numberWithInt:(int)numAleatorio] atIndex:_rodada];
    
    _rodada+=1;
    
}



- (NSMutableArray *)exibirSequencia {
    
    
    
    for(NSInteger i = 0; i <[_sequencia count]; i++) {
        
        
        
        //exibe um item da sequência por linha e espera alguns instantes entre a exibição de um e outro
        
        NSNumber *a=[_sequencia objectAtIndex:i];
        
        NSLog(@"%d ",a.intValue);
        
        //        [NSThread sleepForTimeInterval:1.0];
        
    }
    
    
    
    return _sequencia;
    
}



- (bool)verificarSequenciaInformada:(NSMutableArray *)entrada {
    
    for (NSInteger i=0; i<(_rodada); i++) {
        
        
        if ([[entrada objectAtIndex:i] isEqualToNumber: [_sequencia objectAtIndex:i]]==NO){
            
            return false;
            
        }
        
    }
    
    [_player atualizarRecordes];
    
    return true;
    
}



-(void)jogo{
    
    
    
    
    
    NSMutableArray *resp=[[NSMutableArray alloc] initWithCapacity:200];
    
    bool isJogo=true;
    
    
    
    for(;isJogo==true;){
        
        
        
        [self aumentarSequencia];
        
        [self exibirSequencia];
        
        
        
        
        
        [NSThread sleepForTimeInterval:3.0];
        
        // NSLog(@"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n");
        
        [self limpar];
        
        NSLog(@"Repita a sequência separando os itens com espaço:");
        
        int a;
        
        //        scanf("%i",&a);
        
        for (int i=0; i<_rodada; i++) {
            
            //  NSLog(@"entre com o %i-ésimo numero",(i+1));
            
            scanf("%i",&a);
            
            [resp insertObject:[NSNumber numberWithInt:(int)a] atIndex:i];
            
        }
        
        
        
        //            for (int i=0; i<[_sequencia count]; i++) {
        
        //                [resp addObject:[NSString stringWithCString:&sequenciaInformada[i] encoding:NSUTF8StringEncoding]];
        
        //            }
        
        
        
        isJogo=[self verificarSequenciaInformada: resp];
        
        [self limpar];
        
        //        NSNumber *clear=[[NSNumber alloc] init];
        
        //        [clear ];
        
        //        for (int i=0; i<_rodada; i++) {
        
        //            [resp insertObject: atIndex:i];
        
        //        }
        
    }
    
    NSLog(@"Você errou!!!");
    
    NSLog(@"Fim de Jogo");
    
}

-(void)limpar

{
    
    NSAppleScript *lClearDisplay = [[NSAppleScript alloc] initWithSource:@"tell application \"System Events\"\n \ keystroke \"k\" using command down\n \ end tell "];
    
    NSDictionary *errorInfo; [lClearDisplay executeAndReturnError:&errorInfo];
    
}



@end