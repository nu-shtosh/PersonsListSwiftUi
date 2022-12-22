//
//  ContactCellView.swift
//  PersonsListSwiftUi
//
//  Created by Илья Дубенский on 22.12.2022.
//

import SwiftUI

struct ContactCellView: View {
    let text: String
    let image: ContactImage

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: image.rawValue)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.blue)
                    .padding(.trailing, 10)
                Text(text)
            }
        }
    }
}

struct ContactCellView_Previews: PreviewProvider {
    static var previews: some View {
        ContactCellView(text: Contact.getContact().email, image: .phone)
    }
}
