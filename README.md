# App

Gympass

## RFs (Requisitos funcionais)

- [x] Deve ser possível se cadastrar;
- [x] Deve ser possível se autenticar;
- [x] Deve ser possível obter o perfil de um usuáruio logado;
- [x] Deve ser possível obter o número de check-ins realizados pelo usuário logado;
- [x] Deve ser possível o usuário obter seu histórico de check-ins;
- [x] Deve ser possível o usuário buscar academias próximas(10km);
- [x] Deve ser possível o usuário buscar academias pelo nome;
- [x] Deve ser possível o usuário realizar check-in em uma academia;
- [] Deve ser possível validar o check-in de um usuário;
- [x] Deve ser possível cadastrar uma academia;

## RNs (Regras de negócio)

- [x] O usuário não deve poder se cadastrar com um e-mail duplicado;
- [x] O usuário não pode fazer 2 check-ins no mesmo dia;
- [x] O usuário não pode fazer check-in se não estiver perto (100m) da academia;
- [] o check-in só pode ser validado até 20 minutos após criado;
- [] o check-in só pode ser validado por administradores;
- [] A academia só pode ser cadastrada por administradores

## RNFs (Requisitos não-funcionais)

- [x] A senha do usuário precisa está criptografada
- [x] Os dados da aplicação precisam estar persistidos em um banco PostegreSQL;
- [x] Todas listas de dados precisam estar paginandas com 20 itens por página;
- [] O usuário deve ser identificado por um JWT(JSON Web Token )

//TDD
