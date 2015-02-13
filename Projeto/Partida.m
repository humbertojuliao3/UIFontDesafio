//
//  Partida.m
//  Projeto
//
//  Created by Guilherme Ferreira de Souza on 2/13/15.
//  Copyright (c) 2015 Liliane Bezerra Lima. All rights reserved.
//

#import "Partida.h"

@implementation Partida

- (instancetype)init {
    
    self = [super init];
    if (self) {
        _sequencia = (nil);
    }
    return self;
}

- (void)aumentarSequencia {
    
    
    NSInteger numAleatorio = (arc4random() % 3) + 1;
    [_sequencia addObject: [NSNumber numberWithInt:(int)numAleatorio]];
}

- (NSMutableArray *)exibirSequencia {
    
    for(NSInteger i = 0; i < [_sequencia count]; i++) {
        
        //exibe um item da sequência por linha e espera alguns instantes entre a exibição de um e outro
        
        NSLog(@"%d", (int)_sequencia[i]);
        [NSThread sleepForTimeInterval:1.0f];
    }
    
    return _sequencia;
}

- (bool)verificarSequenciaInformada:(NSMutableArray *)s {
    
    if (s == _sequencia)
        return true;
    else
        return false;
    
}

@end
