//
//  main.m
//  Projeto
//
//  Created by Liliane Bezerra Lima on 13/02/15.
//  Copyright (c) 2015 Liliane Bezerra Lima. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Jogador.h"
#import "Partida.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"Para iniciar o jogo, insira o nome do Jogador:");
        NSString *nomeJogador;
        char nome[50];
        scanf("%s", nome);
        nomeJogador = [NSString stringWithCString:nome encoding:NSUTF8StringEncoding];
        Jogador *jogador = [[Jogador alloc] initWithNome:nomeJogador];
        
        Partida *p = [[Partida alloc]init];
        
        char sequenciaInformada;
        
        [p aumentarSequencia];
        [p exibirSequencia];
        NSLog(@"Repita a sequência separando os itens com espaço:");
        scanf("@s", sequenciaInformada);
        
        
    }
    return 0;
}
