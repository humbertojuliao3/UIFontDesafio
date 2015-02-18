//
//  Partida.h
//  Projeto
//
//  Created by Guilherme Ferreira de Souza on 2/13/15.
//  Copyright (c) 2015 Liliane Bezerra Lima. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Jogador.h"

@interface Partida : NSObject

@property NSMutableArray *sequencia;
@property Jogador *player;
@property int rodada;
@property int pontuacao;
@property int jogadores;
@property int posicao;
@property NSString *nome;
@property NSMutableArray *ponto;
@property NSMutableArray *nickname;
@property NSMutableDictionary *ordenar;
@property NSString *frase1;

-(void)teste;

- (instancetype)init;
- (void)aumentarSequencia;
- (bool)verificarSequenciaInformada:(NSMutableArray *)entrada;
- (NSMutableArray *)exibirSequencia;
- (void)jogo;
-(void)limpar;
-(void)menu;
-(void)pontos;
-(NSString *)inicio;
-(void)sobre;
@end