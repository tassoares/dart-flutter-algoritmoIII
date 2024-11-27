# Dart & Flutter Learning Project

Este projeto foi criado como parte da disciplina **Algoritmo III** com o objetivo de aprender e aplicar conceitos fundamentais de **Dart** e **Flutter**. O projeto utiliza uma estrutura de código que inclui diversas plataformas e funcionalidades básicas para explorar o desenvolvimento de aplicativos mobile e web.

## Estrutura do Projeto

A estrutura do projeto está organizada de forma a suportar múltiplas plataformas e facilitar a organização do código:

- **`android/` e `ios/`**: Contém os arquivos e configurações necessários para as plataformas mobile.
- **`lib/`**: Diretório principal do código Dart.
  - **`menu/`**: Componentes para o menu de navegação, como `drawer_item.dart` e `navigation_drawer.dart`.
  - **`pages/`**: Páginas principais do app, incluindo:
    - `home.dart`
    - `people.dart`
    - `login_screen.dart`
  - **`main.dart`**: Ponto de entrada do aplicativo.
- **`web/`**: Arquivos para suportar a versão web do projeto.
- **`assets/`**: Recursos como imagens e ícones.
- **Configurações**:
  - `pubspec.yaml`: Gerenciamento de dependências e configurações do Flutter.
  - `.gitignore`: Lista de arquivos e pastas a serem ignorados no controle de versão.

## Funcionalidades

- **Login Screen**: Tela de autenticação simples.
- **Menu de Navegação**: Implementação de um drawer para facilitar a navegação entre páginas.
- **Compatibilidade Multi-Plataforma**: Suporte para Android, iOS, Web, Windows, macOS e Linux.

## Como Executar o Projeto

1. **Pré-requisitos**:
   - [Flutter SDK](https://flutter.dev/docs/get-started/install)
   - [Dart SDK](https://dart.dev/get-dart)

2. **Clone o Repositório**:
   ```bash
   git clone https://github.com/tassoares/dart-flutter-algoritmoIII.git
   cd dart-flutter-algoritmoIII
   ```
3. **Instale as Dependências**:

    ```bash
    flutter pub get
    ```
4. **Execute o Projeto: Para dispositivos mobile**:

    ```bash
    flutter run
    ```
5. **Para versão web:**

    ```bash
    flutter run -d chrome
    ```
    
## Aprendizados e Desafios

Este projeto foi desenvolvido por um estudante iniciante em Flutter, e serviu como uma introdução à estrutura e ao ecossistema do framework. Apesar de simples, permitiu explorar conceitos como:

- Organização de projetos multi-plataforma.
- Implementação de layouts responsivos.
- Gerenciamento de dependências no Flutter.

## Próximos Passos
- Adicionar mais páginas com funcionalidades avançadas.
- Melhorar a estilização e a responsividade do app.
- Implementar testes unitários.   
    
