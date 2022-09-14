//
//  MainTabView.swift
//  banco-bradesco
//
//  Created by user227537 on 9/14/22.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedIndex=0
    var body: some View {
        TabView{
            ContentView()
                .badge(10)
                .tabItem{
                    Label("Menu", systemImage:"bell")
                }
            Tab2View()
                .badge(10)
                .tabItem{
                    Label("Início", systemImage:"house")
                }
            Tab2View()
                .badge(10)
                .tabItem{
                    Label("Busca", systemImage:"magnifyingglass")
                }
            Tab2View()
                .badge(10)
                .tabItem{
                    Label("Notificações", systemImage:"envelope")
                }
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
