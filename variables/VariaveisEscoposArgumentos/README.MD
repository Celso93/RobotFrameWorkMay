# Introduction
- To run : robot -d ./results TEST
- Robot Scope
.robot : Test suit

Exemple (see ExemplosEscoposVariaveis.robot): 
    GLOBAIS:                Visible in ALL TestSuite.robot 
    SUITE:                  Visible ONLY in the testsuite.robot
    TESTE (test case):      Visible only in the test case
    LOCAL (keyword):        Visible only in the keyword

TIPOS   (ExemplosTiposVariaveis.robot):
#Simples
${SIMPLES}   Vamos ver os tipos de variáveis no robot!

#Tipo Lista (arrays) - separar itens com espaço duplo
@{FRUTAS}    morango   banana   maça   uva   abacaxi

#Tipo Dicionário (chave=valor) - separar cada chave=valor com espaço duplo
&{PESSOA}    nome=May Fernandes   email=mayfernandes@exemplo.com.br   idade=28   sexo=feminino

Check more information on Variaveis Escopos directory


# Documentation
- https://robotframework.org/robotframework/latest/libraries/BuiltIn.html