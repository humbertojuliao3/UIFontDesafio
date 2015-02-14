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
        _rodada = 0;
    }
    return self;
}

- (void)aumentarSequencia {
    NSInteger numAleatorio;
    numAleatorio = (rand() %3) + 1;
    NSLog(@"%lu",numAleatorio);
    [_sequencia addObject: [NSNumber numberWithInt:(int)numAleatorio]];
    _rodada+=1;
}

- (NSMutableArray *)exibirSequencia {
    
    for(NSInteger i = 0; i <=[_sequencia count]; i++) {
        
        //exibe um item da sequência por linha e espera alguns instantes entre a exibição de um e outro
        
        NSLog(@"%d", (int)[_sequencia objectAtIndex:i]);
//        [NSThread sleepForTimeInterval:1.0];
    }
    
    return _sequencia;
}

- (bool)verificarSequenciaInformada:(NSMutableArray *)s {
    for (int i=0; i<(_rodada); i++) {
        if ([s objectAtIndex:i] != [_sequencia objectAtIndex:i]){
            return false;
        }
    }
    [_player atualizarRecordes];
    return true;
}

-(void)jogo{

    NSLog(@"BEM VINDO AO GENIUS \n");
    NSLog(@"Para iniciar o jogo, insira o nome do Jogador:");
    NSString *nomeJogador;
    char nome[50];
    scanf("%s", nome);
    nomeJogador = [NSString stringWithCString:nome encoding:NSUTF8StringEncoding];
    [_player setNome:nomeJogador];
    
//    Partida *p = [[Partida alloc]init];
    
    char sequenciaInformada[ [_sequencia count] ];
    NSMutableArray *resp=[[NSMutableArray alloc] init];
    bool isJogo=true;
    
    for(;isJogo==true;){
    
        [self aumentarSequencia];
        [self exibirSequencia];
//        [NSThread sleepForTimeInterval:1.0];
        NSLog(@"Repita a sequência separando os itens com espaço:");
        scanf("%s", sequenciaInformada);

            for (int i=0; i<[_sequencia count]; i++) {
                [resp addObject:[NSString stringWithCString:&sequenciaInformada[i] encoding:NSUTF8StringEncoding]];
            }
        
        isJogo=[self verificarSequenciaInformada: resp];
    }
    NSLog(@"Fim de Jogo");
}
@end
