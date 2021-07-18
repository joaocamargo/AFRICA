//
//  ContentView.swift
//  Africa
//
//  Created by joao camargo on 17/07/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        //MARK: - properties
        
        let animals: [Animal] = Bundle.main.decode("animals.json")
        
        
        NavigationView {
            List {
                CoverImageView().frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                ForEach(animals) { animal in
                    NavigationLink(destination: AnimalDetailView(animal: animal)){
                        AnimalListItemView(animal: animal)
                    }
                }
                
            } // : list
            .navigationBarTitle("Africa", displayMode:  .large)
        } // : navig
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
