// Bibliotecas e funções
import Foundation

// Declaração de variáveis
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

// Função para encontrar índice de um paciente pelo número de identificação
func indicePaciente(identificacao: String) -> Int? {
    return pacientes.firstIndex { $0.identificacao == identificacao }
}

// Mensagem inicial
print("Seja bem vindo ao Hospital João Trici")
print()

while verifica != 6 { // Loop "infinito"
    // Menu de opções
    print("Digite o código correspondente à função que deseja:")
    print("1. Cadastrar Paciente")
    print("2. Alterar Paciente")
    print("3. Excluir Paciente")
    print("4. Visualizar Pacientes")
    print("5. Pesquisar Paciente")
    print("6. Fechar o Sistema")
    print()
    print("O que você deseja fazer?")
    
    // Verificando se o usuário colocou uma opção válida
    if let funcao = Int(readLine() ?? "") {
        // As funções do sistema
        switch funcao {
        case 1: // Cadastrar Paciente
            print("Cadastrar paciente")
            
            // Capturar dados do paciente
            print("Digite o nome completo do paciente:")
            let nomeCompleto = readLine() ?? ""
            
            print("Digite a data de nascimento do paciente:")
            let dataNascimento = readLine() ?? ""
            
            print("Digite o número de identificação do paciente:")
            let identificacao = readLine() ?? ""
            
            print("Digite o diagnóstico médico do paciente:")
            let diagnostico = readLine() ?? ""
            
            print("Digite as medicações em uso pelo paciente:")
            let medicacoesEmUso = readLine() ?? ""
            
            print("Digite a data de admissão do paciente:")
            let dataAdmissao = readLine() ?? ""
            
            print("Digite as notas e observações dos médicos sobre o paciente:")
            let notasObservacoes = readLine() ?? ""
            
            // Criando um objeto Paciente com os dados fornecidos e adicionando ao vetor
            let paciente = Paciente(nomeCompleto: nomeCompleto, dataNascimento: dataNascimento, identificacao: identificacao, diagnostico: diagnostico, medicacoesEmUso: medicacoesEmUso, dataAdmissao: dataAdmissao, notasObservacoes: notasObservacoes)
            
            pacientes.append(paciente)
            
        case 2: // Alterar dados do Paciente
            print("Alterar dados do Paciente")
            print("Digite o número de identificação do paciente:")
            let identificacao = readLine() ?? ""
            
            if let index = indicePaciente(identificacao: identificacao) {
                print("Paciente encontrado. Insira os novos dados:")
                print("Digite o novo nome completo do paciente:")
                pacientes[index].nomeCompleto = readLine() ?? pacientes[index].nomeCompleto
                
                print("Digite a nova data de nascimento do paciente:")
                pacientes[index].dataNascimento = readLine() ?? pacientes[index].dataNascimento
                
                print("Digite o novo diagnóstico médico do paciente:")
                pacientes[index].diagnostico = readLine() ?? pacientes[index].diagnostico
                
                print("Digite as novas medicações em uso pelo paciente:")
                pacientes[index].medicacoesEmUso = readLine() ?? pacientes[index].medicacoesEmUso
                
                print("Digite a nova data de admissão do paciente:")
                pacientes[index].dataAdmissao = readLine() ?? pacientes[index].dataAdmissao
                
                print("Digite as novas notas e observações dos médicos sobre o paciente:")
                pacientes[index].notasObservacoes = readLine() ?? pacientes[index].notasObservacoes
                
                print("Dados do paciente atualizados com sucesso.")
            } else {
                print("Paciente não encontrado.")
            }
            
        case 3: // Excluir um Paciente
            print("Excluir um Paciente")
            print("Digite o número de identificação do paciente que deseja excluir:")
            let identificacao = readLine() ?? ""
            
            if let index = indicePaciente(identificacao: identificacao) {
                pacientes.remove(at: index)
                print("Paciente removido com sucesso.")
            } else {
                print("Paciente não encontrado.")
            }
            
        case 4: // Visualizar Pacientes
            print("Visualizar Pacientes")
            if pacientes.isEmpty {
                print("Não há pacientes cadastrados.")
            } else {
                for paciente in pacientes {
                    print("=============================")
                    print("Nome Completo: \(paciente.nomeCompleto)")
                    print("Data de Nascimento: \(paciente.dataNascimento)")
                    print("Identificação: \(paciente.identificacao)")
                    print("Diagnóstico: \(paciente.diagnostico)")
                    print("Medicações em Uso: \(paciente.medicacoesEmUso)")
                    print("Data de Admissão: \(paciente.dataAdmissao)")
                    print("Notas e Observações: \(paciente.notasObservacoes)")
                    print("=============================")
                }
            }
            
        case 5: // Pesquisar Paciente
            print("Pesquisar Paciente")
            print("Digite o nome ou número de identificação do paciente:")
            let chaveBusca = readLine() ?? ""
            
            var encontrado = false
            for paciente in pacientes {
                if paciente.nomeCompleto.lowercased().contains(chaveBusca.lowercased()) || paciente.identificacao == chaveBusca {
                    print("=============================")
                    print("Nome Completo: \(paciente.nomeCompleto)")
                    print("Data de Nascimento: \(paciente.dataNascimento)")
                    print("Identificação: \(paciente.identificacao)")
                    print("Diagnóstico: \(paciente.diagnostico)")
                    print("Medicações em Uso: \(paciente.medicacoesEmUso)")
                    print("Data de Admissão: \(paciente.dataAdmissao)")
                    print("Notas e Observações: \(paciente.notasObservacoes)")
                    print("=============================")
                    encontrado = true
                }
            }
            
            if !encontrado {
                print("Paciente não encontrado.")
            }
            
        case 6: // Fechar Sistema
            print("Obrigado por usar o sistema")
            verifica = 6
        default:
            print("Por favor, escolha uma das opções disponíveis")
        }
    } else {
        print("Opção inválida. Tente novamente.")
    }
}
