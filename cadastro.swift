// Versão 0.5

// Bibliotecas e funções
import Foundation

// Declaração de variaveis
struct Paciente {
    var nomeCompleto: String
    var dataNascimento: String
    var identificacao: String
    var diagnostico: String
    var medicacoesEmUso: String
    var dataAdmissao: String
    var notasObservacoes: String
}
var pacientes: [Paciente] = [] // Vetor para armazenar os pacientes

// Mensagem inicial
print("Seja bem vindo ao Hospital João Trici")
print()
print("As funcoes disponiveis são:")
    print("Digite o codigo correspondente a funcao que deseja")
    print("1. Cadastrar Paciente: Adicionar novos pacientes ao sistema.")
    print("2. Alterar Paciente: Atualizar informações de pacientes existentes.")
    print("3. Excluir Paciente: Remover pacientes do sistema.")
    print("4. Visualizar Pacientes: Listar e visualizar informações dos pacientes cadastrados.")
    print("5. Pesquisar Paciente: Buscar pacientes por nome ou número de identificação.")
print()
print("O que voce deseja fazer")

// Verificando se o usuário colocou uma opção valida
if let funcao = Int(readLine()!) {
    // As funções do sistema
    switch funcao {
    case 0: 
        print("Teste")
    case 1: // Cadastrando o Paciente
        print("Cadastrar paciente")
        
        // Loop para capturar dados dos pacientes
        for _ in 0..<1 { // Adicionando dados de 1 pacientes, podendo alterar a quantidade conforme necessário
        
        print("Digite o nome completo do paciente:")
        let nomeCompleto = readLine()!
        
        print("Digite a data de nascimento do paciente:")
        let dataNascimento = readLine()!
        
        print("Digite o número de identificação do paciente:")
        let identificacao = readLine()!
        
        print("Digite o diagnóstico médico do paciente:")
        let diagnostico = readLine()!
        
        print("Digite as medicações em uso pelo paciente:")
        let medicacoesEmUso = readLine()!
        
        print("Digite a data de admissão do paciente:")
        let dataAdmissao = readLine()!
        
        print("Digite as notas e observações dos médicos sobre o paciente:")
        let notasObservacoes = readLine()!
    
        // Criando um objeto Paciente com os dados fornecidos e adicionando ao vetor
        let paciente = Paciente(nomeCompleto: nomeCompleto, dataNascimento: dataNascimento, identificacao: identificacao, diagnostico: diagnostico, medicacoesEmUso: medicacoesEmUso, dataAdmissao: dataAdmissao, notasObservacoes: notasObservacoes)
    
        pacientes.append(paciente)
        }
    case 2: // Alterando dados do Paciente
        print("Alterar dados do Paciente")
    
    case 3: // Excluindo um Paciente
        print("Excluir um Paciente")
        
    case 4: // Visualizando Pacientes
        print("Visualizar Pacientes")
    
    case 5: // Pesquisando Paciente
        print("Pesquisar Paciente")
    
    default:
        print("Por favor, escolha uma das opções disponíveis")
    }
}else {
    print("Opção invalida")
}
// Fim :)
