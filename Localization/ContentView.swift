//
//  ContentView.swift
//  Localization
//
//  Created by MahdiHanifeh on 3/28/1401 AP.
//

import SwiftUI
import LanguageManagerSwiftUI
struct ContentView: View {
    
    @EnvironmentObject var languageSeting : LanguageSettings
    @State  var colorBtn : Bool = true
    
    
    
    var body: some View {
        VStack {
            
            Text(LocalizedStringKey("Text1"))
                .font(.title)
                .bold()
            
            Text(LocalizedStringKey("Text2"))
                .padding()
            
            
            
            Button {
                
                if languageSeting.selectedLanguage == .ar{
                    withAnimation {
                        languageSeting.selectedLanguage = .en
                        colorBtn = false
                        
                    }
                    
                    print("1")
                    
                }else{
                    withAnimation {
                        languageSeting.selectedLanguage = .ar
                        colorBtn = true
    
                        
                    }
                    
                    print("2")
                }
//                colorBtn.toggle()
                print("color btn was \(colorBtn)")
                
            } label: {
                Image(systemName: colorBtn ? "sun.min" :"moon.fill")
                    .padding()
            }
            .onAppear {
                withAnimation(.linear){
                   
                }
            }
            .foregroundColor(.yellow)
            .background(.blue)
            .clipShape(Capsule())
            
            
            
        }
    }

}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13 mini")
    }
}
