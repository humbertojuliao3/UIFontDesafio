//
//  Partida.h
//  Projeto
//
//  Created by Guilherme Ferreira de Souza on 2/13/15.
//  Copyright (c) 2015 Liliane Bezerra Lima. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Partida : NSObject

- (instancetype)init;
- (void)aumentarSequencia;
- (bool)verificarSequenciaInformada:(NSMutableArray *)s;
- (NSMutableArray *)exibirSequencia;

@property NSMutableArray *sequencia;

@end