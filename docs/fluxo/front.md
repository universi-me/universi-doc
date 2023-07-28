# Front-end: Criação, desenvolvimento e finalização de tarefa

## Criação
1. Criar a issue no github
	* **Feature** para tarefas que **acrescentam** uma funcionalidade no sistema;
	* **Change** para tarefas que **modificam** uma funcionalidade já existente;
	* **Bug Report** (ou **Fix**) para correção de bugs.

1. Preencher título da issue
	* O mínimo de texto possível (recomendado até 4 palavras) para que alguém entenda o que essa tarefa altera. Não precisa de muitos detalhes, eles irão na descrição da issue.

1. Preencher descrição
	* Descrever com o máximo de detalhe possível a alteração que deve ser feita colocando todas as informações necessárias para desenvolver.

1. Preencher motivação
	* Descrever o motivo pelo qual a alteração deve ser feita.

1. Adicionar ao projeto
	* No lado direito da tela de issue (criando ou já criada) existe a opção "Projects". Clique na engrenagem e selecione "Task List" do Universi.me.

1. Finalize clicando em "Submit new issue"

## Desenvolvimento

1. Adicionar responsável
	* No lado direito da tela de issue existe a opção "Assignees". Clique na engrenagem e selecione todos os desenvolvedores da tarefa.

1. Criar branch da tarefa
	* O padrão para o nome da branch é: `<tipo da tarefa>#<número-da-issue>/<título-da-issue>`
		* O tipo da tarefa vai ser `feat`, `change` ou `fix` de acordo com o tipo que a issue foi criada;
		* O número da issue é o número gerado pelo github na hora que a issue foi criada;
		* O título da issue é autoexplicativo;
		* Exemplo: A issue "[FEAT] Tela de perfil #22" vai usar a branch `feat#22/tela-de-perfil`.

1. Alterar o status da tarefa
	* No lado direito da tela da issue existe a opção "Projects". Clique na seta para baixo ao lado de "Status" e selecione "In Progress".

1. Conectar branch na issue
	* No lado direito da tela da issue existe a opção "Development". Clique na engrenagem, selecione `universi-me/universi-front` e busque a branch criada.

* O padrão de commit é: `<tipo-de-commit>: <nome do commit>`
	* O tipo de commit é semelhante ao tipo da tarefa:
		* `feat` para um commit que adiciona uma funcionalidade;
		* `change` para um commit que altera uma funcionalidade;
		* `fix` para um commit que corrige um bug.
	* Exemplos:
		* `change: renamed "skill" to "competence"`;
		* `feat: discard changes modal`.

### **NÃO ECONOMIZAR EM COMMITS**
Cada commit deve ser importante, mas não ajuda ninguém se 1 único commit altera 20 arquivos e 1500 linhas. Não espere terminar a tarefa pra fazer seu commit, cada passo até completar a tarefa pode ser um commit diferente.

## Finalização

1. Criar pull request
	* Selecione sua branch para criar a pull request dela para `main`;
	* Altere o título para o formato `<tipo-da-issue>#<número-da-issue>: <título-da-issue>`;
	* Preencha "related issue" com `Closes #<número da issue>`.

1. Marque os revisores
	* No lado direito da tela de pull request existe a opção "Reviewers". Clique na engrenagem e selecione os membros responsáveis pela revisão de código;
	* Os revisores receberão um email avisando, mas avise-os pelo discord que a tarefa foi concluída e precisa de revisão.

1. Espere pelas revisões
	* Se os revisores autorizarem a tarefa faça **squash merge** da pull request;
	* Se houver alterações a serem feitas: faça as alterações seguindo o padrão de desenvolvimento e avise novamente os revisores.
