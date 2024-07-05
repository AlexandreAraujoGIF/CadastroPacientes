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
var verifica: Int = 0

// Mensagem inicial
print("Seja bem vindo ao Hospital João Trici")
print()
    print("Digite o codigo correspondente a funcao que deseja!")
    print("1. Cadastrar Paciente: Adicionar novos pacientes ao sistema.")
    print("2. Alterar Paciente: Atualizar informações de pacientes existentes.")
    print("3. Excluir Paciente: Remover pacientes do sistema.")
    print("4. Visualizar Pacientes: Listar e visualizar informações dos pacientes cadastrados.")
    print("5. Pesquisar Paciente: Buscar pacientes por nome ou número de identificação.")
    print("6. Fechar o Sistema.")
print()
print("O que voce deseja fazer ?")


while verifica != 6{ // Loop "infinito"
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
            print("Digite o número de identificação do paciente que deseja alterar:")
            let identificacao = readLine()!
            
            if let index = pacientes.firstIndex(where: { $0.identificacao == identificacao }) {
                print("Paciente encontrado. Digite os novos dados:")
                
                print("Novo nome completo do paciente:")
                pacientes[index].nomeCompleto = readLine()!
                
                print("Nova data de nascimento do paciente:")
                pacientes[index].dataNascimento = readLine()!
                
                print("Novo diagnóstico médico do paciente:")
                pacientes[index].diagnostico = readLine()!
                
                print("Novas medicações em uso pelo paciente:")
                pacientes[index].medicacoesEmUso = readLine()!
                
                print("Nova data de admissão do paciente:")
                pacientes[index].dataAdmissao = readLine()!
                
                print("Novas notas e observações dos médicos sobre o paciente:")
                pacientes[index].notasObservacoes = readLine()!
                
                print("Dados do paciente alterados com sucesso!")
            } else {
                print("Paciente não encontrado.")
            }
        
        case 3:
            print("Digite o número de identificação do paciente que deseja excluir:")
            let identificacao = readLine()!
            
            if let index = pacientes.firstIndex(where: { $0.identificacao == identificacao }) {
                pacientes.remove(at: index)
                print("Paciente removido do sistema.")
            } else {
                print("Paciente não encontrado.")
            }
            
        case 4: // Visualizando Pacientes
            if pacientes.isEmpty {
                print("Não há pacientes cadastrados.")
            } else {
                print("Lista de Pacientes:")
                for paciente in pacientes {
                    print("========================")
                    print("Nome: \(paciente.nomeCompleto)")
                    print("Data de Nascimento: \(paciente.dataNascimento)")
                    print("Número de Identificação: \(paciente.identificacao)")
                    print("Diagnóstico Médico: \(paciente.diagnostico)")
                    print("Medicações em Uso: \(paciente.medicacoesEmUso)")
                    print("Data de Admissão: \(paciente.dataAdmissao)")
                    print("Notas e Observações: \(paciente.notasObservacoes)")
                }
                print("========================")
            }
        case 5: // Pesquisando Paciente
            print("Pesquisar Paciente")
    
        case 6: // Fechar Sistema
            print("Obrigado por usar o sistema")
            verifica = 6
            break
        default:
            print("Por favor, escolha uma das opções disponíveis")
        }
    }else {
        print("Opção invalida. Tente novamente")
    }
}
