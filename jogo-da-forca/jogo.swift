import Foundation

print("Bem-vindo ao jogo")

var forca: Forca = Forca()
while var leitura = readLine(){
    print("Digite uma letra: ")
    print(forca.jogar(letras:leitura))
}
