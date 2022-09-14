//
//  ContentView.swift
//  Shared
//
//  Created by user227537 on 9/14/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            HStack(alignment: .top, spacing: 12){
                Text("🏦")
                Text("Olá, Sillas")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                Spacer()
                Text("👁‍🗨")
                Text("📑")
                Text("▶︎")
            }.padding()
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .fill()
                    .foregroundColor(Color(hex: 0xeef2fe))
                    .padding()
                    .aspectRatio(3, contentMode: .fit)
                HStack{
                    textUpDown(textUp: "Saldo disponível", textDown: "R$ 1.000,00")
                    Spacer()
                    textUpDown(textUp: "Agendado até 30Set", textDown: "R$ - 300,00")
                }.padding()
                    
            }
            
            HStack{
                circleButtons(text: "Extrato")
                circleButtons(text: "Pagamento")
                circleButtons(text: "Transferência")
                circleButtons(text: "Pix")
            }
            HStack{
                circleButtons(text: "Empréstimo")
                circleButtons(text: "Seguro")
                circleButtons(text: "Investimento")
                circleButtons(text: "Consórcio")
            }
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .fill()
                    .foregroundColor(Color(hex: 0xeef2fe))
                    .padding()
                    .aspectRatio(3, contentMode: .fit)
                VStack{
                        HStack{
                            Text("🏦")
                            Text("Quer sair de casa mais tranquilo")
                                .font(.system(size: 12, weight: .semibold))
                            Text("🏦")
                        }.aspectRatio(contentMode: .fit)
                        Text("Proteja da bolsa ao Pix por apenas R$ 9,90 por mês")
                            .font(.system(size: 13, weight: .semibold))
                            .foregroundColor(.secondary)
                   
                    
                    }.padding()
            }
           
            Spacer()
            
        }
        
    }
}
extension Color {
    init(hex: Int, opacity: Double = 1.0) {
        let red = Double((hex & 0xff0000) >> 16) / 255.0
        let green = Double((hex & 0xff00) >> 8) / 255.0
        let blue = Double((hex & 0xff) >> 0) / 255.0
        self.init(.sRGB, red: red, green: green, blue: blue, opacity: opacity)
    }
}
struct circleButtons: View{
    var text:String
    var body: some View{
        VStack{
            ZStack{
                Circle()
                    .fill(Color(hex: 0xeef2fe))
                    .frame(width: 50, height: 50)
                Text("🏦")
            }
            Text(text)
                .font(.system(size: 12, weight: .semibold))
        }
        
    }
}

struct textUpDown: View{
    var textUp:String
    var textDown:String
    var color:Color = Color(hex: 0xeef2fe)
    var body: some View{
        
        VStack{
            Text(textUp)
                .font(.system(size: 12, weight: .semibold))
                .foregroundColor(Color(hex: 0x757679))
            Text(textDown)
                .font(.system(size: 12, weight: .bold))
                .foregroundColor(Color(hex: 0x306bfe))
        }.padding()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}

