//
//  LocalizationApp.swift
//  Localization
//
//  Created by MahdiHanifeh on 3/28/1401 AP.
//

import SwiftUI
import LanguageManagerSwiftUI

@main
struct LocalizationApp: App {
    var body: some Scene {
        WindowGroup {
            LanguageManagerView(.deviceLanguage){
                ContentView()
             
            }
           
        }
    }
}
