# EasyOrder


Aplicativo desenvolvido para a matéria de Projeto e Desenvolvimento de Sistemas I no curso de Sistemas de informação pela Universidade Federal de Uberlândia. 



## Como instalar o App

### Instalação do Windows

#### Requisitos de sistema
Para instalar e executar o Flutter, seu ambiente de desenvolvimento deve atender a estes requisitos mínimos:

- Sistemas operacionais : Windows 10 ou posterior (64 bits), baseado em x86-64.
- Espaço em disco : 1,64 GB (não inclui espaço em disco para IDE/ferramentas).
- Ferramentas : O Flutter depende da disponibilidade dessas ferramentas em seu ambiente.
  - Windows PowerShell 5.0 ou mais recente (este é pré-instalado com o Windows 10)
  - Git para Windows 2.x, com a opção Usar Git no Prompt de Comando do Windows .

    Se o Git para Windows já estiver instalado, verifique se você pode executar gitcomandos no prompt de comando ou no PowerShell.

#### Obtenha o SDK Flutter
1. Baixe o seguinte pacote de instalação para obter a versão estável mais recente do Flutter SDK:
`https://storage.googleapis.com/flutter_infra_release/releases/stable/windows/flutter_windows_3.0.5-stable.zip`

Para outros canais de lançamento e compilações mais antigas, consulte a página de lançamentos do SDK .

2. Extraia o arquivo zip e coloque o contido flutterno local de instalação desejado para o Flutter SDK (por exemplo, C:\src\flutter).


Se você não quiser instalar uma versão fixa do pacote de instalação, pule as etapas 1 e 2. Em vez disso, obtenha o código-fonte do repositório Flutter no GitHub e altere branches ou tags conforme necessário. Por exemplo:

`C:\src>git clone https://github.com/flutter/flutter.git -b stable`

Agora você está pronto para executar comandos Flutter no Console Flutter.

#### Atualize seu caminho
Se você deseja executar comandos do Flutter no console normal do Windows, siga estas etapas para adicionar o Flutter à PATHvariável de ambiente:

- Na barra de pesquisa Iniciar, insira 'env' e selecione Editar variáveis ​​de ambiente para sua conta .
- Em variáveis ​​​​do usuário, verifique se há uma entrada chamada Path :
  - Se a entrada existir, anexe o caminho completo para flutter\binusar ;como separador dos valores existentes.
  - Se a entrada não existir, crie uma nova variável de usuário nomeada Pathcom o caminho completo para flutter\bincomo seu valor.

Você precisa fechar e reabrir todas as janelas de console existentes para que essas alterações entrem em vigor.

Executar `flutter doctor`

Em uma janela de console que tenha o diretório Flutter no caminho (veja acima), execute o seguinte comando para ver se há alguma dependência de plataforma necessária para concluir a configuração:

`C:\src\flutter>flutter doctor`

Este comando verifica seu ambiente e exibe um relatório do status de sua instalação do Flutter. Verifique a saída com cuidado para outros softwares que você possa precisar instalar ou outras tarefas a serem executadas (mostradas em negrito ).

Por exemplo:

`[-] Cadeia de ferramentas Android - desenvolver para dispositivos Android
    • SDK do Android em D:\Android\sdk
    ✗ Android SDK não possui ferramentas de linha de comando; baixe em https://goo.gl/XxQghQ
    • Tente reinstalar ou atualizar seu Android SDK,
      visite https://docs.flutter.dev/setup/#android-setup para obter instruções detalhadas.`
      
As seções a seguir descrevem como executar essas tarefas e concluir o processo de configuração. Depois de instalar as dependências ausentes, você pode executar o flutter doctorcomando novamente para verificar se configurou tudo corretamente.

Para instalações adicionais, consultar na documentação do próprio Flutter: `https://docs.flutter.dev/get-started/install/`

Após instalado, entar via terminal na pasta onde foi baixado o App e executar o comando `flutter run`.
