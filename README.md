# flutter_parking_management

Este é um projeto desenvolvido como parte do processo de avaliação para a posição de desenvolvedor sênior Flutter na Raro Labs.

O projeto é estruturado de forma organizada, seguindo as convenções de desenvolvimento e arquitetura recomendadas para projetos Flutter.

## **1. Estrutura do Projeto**

O projeto segue uma estrutura modularizada, dividida em dois principais diretórios:

- **apps/\*\***: Contém todos os aplicativos executáveis do projeto.
- **packages/\*\***: Mantém todos os Micro Apps do projeto.

## **2. Arquitetura e Tecnologias Utilizadas**

O projeto adota a Clean Architecture para garantir a separação de preocupações e a escalabilidade do código. Além disso, faz uso de bibliotecas externas para facilitar a organização e o gerenciamento da arquitetura:

### **Principais Bibliotecas Utilizadas:**

- **Flutter Bloc:** Para gerenciamento de estado.
- **Flutter Modular:** Para modularização e gerenciamento de dependências.
- **Flutter Hive:** Para armazenamento local de dados.

## **3. Configuração do Ambiente de Desenvolvimento**

### **3.1 Flutter SDK**

Certifique-se de estar utilizando a versão estável mais recente da Flutter SDK.

Canal estável, 3.19.6

### **3.2 Melos**

O projeto utiliza o [Melos](https://melos.invertase.dev) para simplificar o gerenciamento do repositório e dos Micro Apps.

Para começar, instale o Melos utilizando o seguinte comando:

```bash
dart pub global activate melos
```

Após clonar o projeto e/ou fazer checkout de uma branch com atualizações, é recomendável limpar o workspace da seguinte forma:

```bash
melos clean
```

Em seguida, para garantir que as dependências estejam corretamente configuradas, utilize o comando:

```bash
melos bs
```

Para obter mais informações sobre a configuração e utilidades do Melos, consulte a [documentação](https://melos.invertase.dev) e o arquivo *melos.yaml* na raiz deste projeto.
