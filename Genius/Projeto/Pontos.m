//
//  Pontos.m
//  Projeto
//
//  Created by Liliane Bezerra Lima on 13/02/15.
//  Copyright (c) 2015 Liliane Bezerra Lima. All rights reserved.
//

#import "Pontos.h"
#import "Jogador.h"

@implementation Pontos

- (void)recordes:(NSString *)n andPontos:(NSString *)pontos
{
    //OBSERVACOES: O CAMINHO TEM QUE SER ATUALIZADO PARA FUNCIONAR CORRETAMENTE, CONTUDO ELE PRECISA ESTAR NA PASTA MACINTOSH HD
    
    int i;
    
    NSURL *url =[NSURL fileURLWithPath:@"/teste/file.txt"];
    
    NSString *fileContent = [NSString stringWithContentsOfURL: url encoding:NSUTF8StringEncoding error:nil];
    
    NSLog(@"fileContent = %@",fileContent);
    
    NSString *texto[300];
    
    
    texto[0]=@"";
    texto[1]=@"\n";
    texto[2] =n;
    texto[3] = pontos;
    
    // texto[1] = @"\nNOME                                                    PONTUACAO \n";
    
    //    texto[2] = @"Bob";
    //    texto[3] = @"                                                        ";
    //    texto[4] = @"112\n";
    
    for(i=1;i<4;i++)
        texto[0] = [texto[0] stringByAppendingString:texto[i]];
    
    //NSLog(@"Texto %@",texto[0]);
    
    NSString *newFileConte = [NSString stringWithFormat:texto[0],fileContent];
    [newFileConte writeToURL:url atomically:YES encoding:NSUTF8StringEncoding error:nil];
    
    
    
}



@end
