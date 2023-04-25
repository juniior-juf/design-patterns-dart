# Singleton

Um dos padrões mais fáceis de se entender, o Singleton nos fornece uma maneira de instanciar objetos uma única vez, ou seja, quando um objeto Singleton é instanciado pela primeira vez e tentarmos instanciar outro objeto do mesmo tipo, essas chamadas retornarão a mesma instância do objeto e não uma nova.

Agora, como exemplo de como podemos aplicar esse padrão de design, suponha que em toda a sua aplicação você deseje registrar todos os eventos que ocorrem durante a sua execução e para isso, você queira que esses registros sejam salvos primeiramente na memória ao invés de um armazenamento local, eximindo a aplicação de adotar algum banco de dados interno. Agora queremos que esses registros salvos na memória sejam enviados para um servidor externo onde queremos armazenar essas informações no banco de dados, isso sempre antes de encerrar a nossa aplicação. Mas para exemplificar nosso exemplo, vamos apenas exibir no console as saídas à medida que um evento for registrado, como veremos a seguir:
![](https://github.com/juniior-juf/design-patterns-dart/blob/main/singleton/images/code1.png)
Temos como saída o seguinte:
![](https://github.com/juniior-juf/design-patterns-dart/blob/main/singleton/images/result1.png)
Hummm...! Parece que há algo de errado nesse nosso exemplo, pois, sempre que registramos um evento e exibimos no console, nota-se que somente o evento que foi adiciona antes da chamada do método de exibição é mostrado, enquanto os demais eventos não aparecem na lista. Isso ocorre devido estarmos criando sempre uma nova instância de RegisterEvents, ou seja, os eventos estão sendo registrados em instâncias diferentes e não é isso o que queremos.

Então para resolver isso, iremos refatorar a classe RegisterEvents para ser uma classe Singleton, dessa forma, podemos utilizar a mesma instância para registrar os eventos.
![](https://github.com/juniior-juf/design-patterns-dart/blob/main/singleton/images/code2.png)
Como saída agora temos o seguinte:
![](https://github.com/juniior-juf/design-patterns-dart/blob/main/singleton/images/result2.png)
Show! Agora sim temos todos os eventos sendo registrados em uma única instância de RegisterEvents e podemos fazer o envio desses eventos para o servidor de uma só vez.

Mas antes de finalizar, veremos outras duas maneiras de criarmos uma classe Singleton. Uma é através de uma variável estática e outra através de um método estático, como mostra a seguir:

Com variável estática:
![](https://github.com/juniior-juf/design-patterns-dart/blob/main/singleton/images/code3.png)
Com método estático:
![](https://github.com/juniior-juf/design-patterns-dart/blob/main/singleton/images/code4.png)
Em ambos os casos, as chamadas a essas classes será “RegisterEvents.instance”. Assim, teremos o mesmo resultado do exemplo anterior, onde aplicamos o Singleton.
