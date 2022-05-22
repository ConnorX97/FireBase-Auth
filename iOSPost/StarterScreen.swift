//
//  StarterScreen.swift
//  iOSPost
//
//  Created by Sherzod Fayziev on 2022/05/21.
//

import SwiftUI

struct StarterScreen: View {
    
    @EnvironmentObject var session: SessionsStore
    
    var body: some View {
        VStack{
            if self.session.session != nil {
                HomeScreen()
            }else{
                signInPage()
            }
        }.onAppear{
            session.listen()
        }
    }
}

struct StarterScreen_Previews: PreviewProvider {
    static var previews: some View {
        StarterScreen()
    }
}

