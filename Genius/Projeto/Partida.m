//
//  Partida.m
//  Projeto
//
//  Created by Guilherme Ferreira de Souza on 2/13/15.
//  Copyright (c) 2015 Liliane Bezerra Lima. All rights reserved.
//

#import "Partida.h"
#import "Jogador.h"
#include <stdlib.h>

@implementation Partida



- (instancetype)init {

    self = [super init];
    if (self) {
        NSMutableArray *a=[[NSMutableArray alloc] initWithCapacity:200];
        _sequencia = a;
        _rodada = 0;
        _pontuacao = 0;
        
    }
    return self;
}


- (void)aumentarSequencia {
    NSInteger numAleatorio = (arc4random() %3) + 1;
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
        
        [NSThread sleepForTimeInterval:1.0];
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
        //        NSNumber *clear=[[NSNumber alloc] init];
        //        [clear ];
        //        for (int i=0; i<_rodada; i++) {
        //            [resp insertObject: atIndex:i];
        //        }
    }
    NSLog(@"Você errou!!!");
    NSLog(@"Fim de Jogo");
    _pontuacao = _rodada * 100;
    _rodada = 0;
    [_sequencia removeAllObjects];
    [NSThread sleepForTimeInterval:1.0];
    [self limpar];
    [self menu];
}

-(void)limpar{
    NSAppleScript *lClearDisplay = [[NSAppleScript alloc] initWithSource:@"tell application \"System Events\"\n \ keystroke \"k\" using command down\n \ end tell "];
    NSDictionary *errorInfo; [lClearDisplay executeAndReturnError:&errorInfo];
}


-(void)menu
{
    int a;
    NSLog(@"1 - Iniciar o jogo");
    NSLog(@"2 - Pontuacao");
    NSLog(@"3 - Mudar Jogador");
    NSLog(@"4 - Sobre");
    scanf("%i",&a);
    
    if (a == 1)
    {
        [self limpar];
        NSLog(@"START");
        [self jogo];
    }
    
    if (a == 2)
    {
        [self limpar];
        [self pontos];
    }
    
    if(a ==3)
    {
        [self limpar];
        [self inicio];
    }
    
    if(a ==4)
    {
        [self limpar];
        [self sobre];
    }
    
}

-(void)pontos
{
    int a;
    NSLog(@" %d", _pontuacao);
    NSLog(@" 1 - Voltar");
    scanf("%i",&a);
    if (a == 1) {
        [self limpar];
        [self menu];
    }
}

-(void)inicio
{
    NSLog(@"BEM VINDO AO GENIUS \n");
    NSLog(@"Para iniciar o jogo, insira o nome do Jogador:");
   // NSString *nomeJogador;
    char nome[50];
    scanf("%s", nome);
    _nome = [NSString stringWithCString:nome encoding:NSUTF8StringEncoding];
   // NSLog(@"Nome e: %@",_nome);
    [self menu];
}

-(void)sobre
{
    int a;
    NSLog(@"\nEssa versao do jogo Genius foi desenvolvido pelos programadores Guilherme Souza, Humberto Juliao, Liliane Lima e Sidney Decarte.\nPara fazerem tal tarefa utilizaram a estrutura de dados fila.\nEsssa estrutura foi escolhida, pois se adequa melhor para o jogo, ja que uma pilha, por desempilhar o ultimo elemento primeiro, iria trazer problemas para um projeto em que a ordem e fundamental e o HashTable por ser um sistema mais elaborado, seria muito potente para essa funcionalidade.");
    
    NSLog(@"\n 1 - Voltar");
    scanf("%i",&a);
    if (a == 1) {
        [self limpar];
        [self menu];
    }
}



@end