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
- (instancetype)init;
- (void)aumentarSequencia;
- (bool)verificarSequenciaInformada:(NSMutableArray *)entrada;
- (NSMutableArray *)exibirSequencia;
- (void)jogo;
-(void)limpar;
@end