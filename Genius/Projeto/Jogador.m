//
//  Jogador.m
//  Projeto
//
//  Created by Liliane Bezerra Lima on 13/02/15.
//  Copyright (c) 2015 Liliane Bezerra Lima. All rights reserved.
//

#import "Jogador.h"

@implementation Jogador


- (instancetype)initWithNome:(NSString *)n {
    
    self = [super init];
    if (self) {
        _nome = n;
    }
    return self;
}

- (void)atualizarRecordes{
    _pontuacao+=1;
    }

@end
