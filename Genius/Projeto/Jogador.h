//
//  Jogador.h
//  Projeto
//
//  Created by Liliane Bezerra Lima on 13/02/15.
//  Copyright (c) 2015 Liliane Bezerra Lima. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Partida.h"

@interface Jogador : NSObject
{
    Partida *partida;
}

- (instancetype)initWithNome:(NSString *)n;
- (void)atualizarRecordes;


@property NSString *nome;
@property int pontuacao;

@end
