import Foundation

class Forca: NSObjetc {
    var tent_letras:[String] = []
    var tentativas : Int = 0
    var palavra : String = "aeroporto"

    override init(){}

    func jogar(letras: String) -> String {
        var letra = letras.uppercased()
        var errou: [String] = ["cabeça", "tronco", "braco esquerda", "braco direita", "perna esquerda", "perna direita", "mao esquerda", "mao direita", "pe esquerdo", "pe direito"]
        
        if(tent_letras.count != self.palavra.count){
            for _ in 0...self.palavra.count -1 {
                tent_letras.append("_")
            }
        }

        while tentativas <= 10{
            let palavra_contem: Bool = self.palavra.contains(letras)

            if(palavra_contem){
                var index = enumerador(letra: letras)
                for i in index{
                    tent_letras[i] = letras
                }

                print("Palavra: \(tent_letras.joined())")
                if self.palavra == self.tent_letras.joined(){
                    return "Parabéns, você acertou e ganhou o jogo"
                }

                return "Parabéns, você acertou a letra: \(letras)"

            }else{
                tentativas = tentativas + 1
                return errou[tentativas - 1]
            }

        }

        return "Você perdeu, jogue novamente"


    }

    func enumerador(letra: String)->[Int]{
        var lista: [Int] = []
        for(a,b) in self.palavra.enumerated(){
            if(Character(letra) == b){
                lista.append(a)
            }
        }
        return lista
    }
}