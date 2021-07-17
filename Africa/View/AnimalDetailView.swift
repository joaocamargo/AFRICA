//
//  AnimalDetailView.swift
//  Africa
//
//  Created by joao camargo on 17/07/21.
//

import SwiftUI

struct AnimalDetailView: View {
    
    //MARK: - properties
    
    let animal: Animal
    
    
    //MARK: - body
    var body: some View {
        ScrollView(.vertical,showsIndicators: false){
            VStack(alignment: .center, spacing:20) {
                //hero image
                Text(animal.name)
            }
            .navigationBarTitle("Learn about \(animal.name)", displayMode: .inline)
        }
    }
}

struct AnimalDetailView_Previews: PreviewProvider {
    
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        
        NavigationView{
            AnimalDetailView(animal: animals[0])
        }.previewDevice("iphone 11 Pro")
    }
}
