# XY-Inc
Teste para vaga de dev backend na Zup.

A XY Inc. é uma empresa especializada na produção de excelentes receptores GPS (Global Positioning System). A diretoria está empenhada em lançar um dispositivo inovador que promete auxiliar pessoas na localização de ponto de interesse (POIs), e precisa muito de sua ajuda.
Você foi contratado para desenvolver a plataforma que fornecerá toda a inteligência ao dispositivo. Esta plataforma deve ser baseada em serviços, se forma a flexibilizar a integração.

## Serviços
1. Cadastro de Ponto de Interesse
2. Listar todos os pontos de interesse
3. Dada uma coordenada (x,y) e uma distância, retornar todos os pontos de interesse nesse Raio.

## Base de Dados
'Lanchonete' (x=27, y=12)

'Posto' (x=31, y=18)

'Joalheria' (x=15, y=12)

'Floricultura' (x=19, y=21)

'Pub' (x=12, y=8)

'Supermercado' (x=23, y=6)

'Churrascaria' (x=28, y=2)

## Tecnologias
```
Ruby on rails 4.2.6
Mysql 5.6.17
```

## Instalando
```
$ git clone https://github.com/lsandrade/xy-inc
$ cd xy-inc
$ bundle install
$ rake db:create db:migrate
```
**Certifique-se de alterar as credenciais de acesso ao banco de dados no arquivo config/database.yml**

## Testando:
```
$ rake db:migrate RAILS_ENV=test
$ rake test
```
Os arquivos de teste encontram-se no diretório 'test'. Exemplo: para verificar o código de teste dos Models, acesse o diretório test/models


## Rodando:
```
$ rails s
```

## Rodando os serviços
```
1. Listando pontos de interesse
$ curl "http://localhost:3000/pois.json"

Resposta: um json com dados de pontos de interesse
Ex: [{"id":1,"name":"Lanchonete","x":27, "y":12, "created_at":"yyyy-mm-dd hh:mm:ss","updated_at":"yyyy-mm-dd hh:mm:ss","url":"http://localhost:3000/pois/1.json"},{...}]

2. Criando ponto de interesse
$ curl -X POST "http://localhost:3000/pois.json" -d "poi[name]=Lanchonete&poi[x]=27&poi[y]=12"

Resposta: json com o ponto cadastrado
Ex: {"id":1,"name":"Lanchonete","x":27, "y":12, "created_at":"yyyy-mm-dd hh:mm:ss","updated_at":"yyyy-mm-dd hh:mm:ss","url":"http://localhost:3000/pois/1.json"}

3. Listar POIs por proximdade dado um Raio de distância
$ curl -X GET "http://localhost:3000/pois/proximity" -d "x=20&y=10&distance=10"

Resposta: array com nomes dos pontos de interesse
Ex: ["Lanchonete", "Joalheria", "Pub", "Supermercado"]

```
