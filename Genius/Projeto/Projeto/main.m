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
#import "Pontos.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Partida *a=[[Partida alloc] init];
        
        
        [a inicio];
        
//            NSMutableDictionary *dict = [NSMutableDictionary dictionary];
//            
//            [dict setObject:@"Foo" forKey:@"Key_1"]; // adds @"Foo"
//            [dict setObject:@"Bar" forKey:@"Key_2"]; // adds @"Bar"
//            
//            [dict setObject:@"Qux" forKey:@"Key_2"]; // overwrites @"Bar"!
//            
//            NSString *aString = [dict objectForKey:@"Key_1"]; // @"Foo"
//            NSString *anotherString = [dict objectForKey:@"Key_2"]; // @"Qux"
//        NSString *yas = [dict objectForKey:@"Key_3"]; // nil
//        
//        NSLog(@"YAS=%@",aString);
        
        
//        NSLog(@"BEM VINDO AO GENIUS \n");
//        NSLog(@"Para iniciar o jogo, insira o nome do Jogador:");
//        NSString *nomeJogador;
//        char nome[50];
//        scanf("%s", nome);
//        nomeJogador = [NSString stringWithCString:nome encoding:NSUTF8StringEncoding];
//
//       [a limpar];
//
//        NSLog(@"1 - INICIAR JOGO");
//        NSLog(@"2 - PONTUACAO");
//        scanf("%i",&escolha);
        
        
       
        
        
       // [a jogo];
        
        /*NSLog(@"BEM VINDO AO GENIUS \n");
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
   
        Pontos *pont = [[Pontos alloc]init];
        [pont recordes:nomeJogador andPontos:@"113"];*/
        
//GENTE ESTAVA TENTANDO COLOCAR SALVAR EM BLOCO DE NOTAS, MAS SEMPRE QUE EU SALVO UM NOVO VALOR PARA IR NO TXT ELE SOBREPOE O QUE ESTAVA LA ANTES. CASO ALGUEM SAIBA COMO ARRUMAR ESSE PROBLEMA, ME AVISA POR FAVOR. SUGIRO USARMOS VETORES PARA ARMAZENAR AS PONTUACOES, O QUE ACHAM ?  
        
    }
    return 0;
}
