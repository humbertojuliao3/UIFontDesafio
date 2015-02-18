//
//  Jogador.m
//  Projeto
//
//  Created by Liliane Bezerra Lima on 13/02/15.
//  Copyright (c) 2015 Liliane Bezerra Lima. All rights reserved.
//

#import "Jogador.h"

@implementation Jogador


- (instancetype)initWithNome:(NSString *)n andPonto:(int)p
{
    
    self = [super init];
    if (self) {
        _nome = n;
        _pontuacao = p;
    }
    return self;
}

- (void)atualizarRecordes{
    //_pontuacao+=1;
    NSLog(@"Nome = %@",_nome);
    NSLog(@"Pontos = %i",_pontuacao);
    }

@end
