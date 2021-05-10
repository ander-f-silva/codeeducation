# Desafio 1 - Módulo Docker

## Objetivo 

Criar uma image de 2MB usando a linguagem golang que exibem a mensagem "Code.educationsRocks!"

## Solução e Ferramentas

Para fazer o desafio eu utilise a linguagem golang 1.16 com Dockerfile trabalhando com duas fases.
A primeira parte faz gera o binario do código usando o comando go build baseada em uma imagem alpine,
a segunda parte é o executor do programa com base na imagem "scratch".

Criei publiquei a minha solução no docker hub e por isso não precisa fazer o build da imagem. 

O tamanho da image é de 836kB.

## Comando para executar o programa

```shell
 docker run --rm --name codeeducation andersonfsilva/codeeducation:latest
```