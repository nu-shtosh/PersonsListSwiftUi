//
//  ContactDetailView.swift
//  PersonsListSwiftUi
//
//  Created by Илья Дубенский on 22.12.2022.
//

import SwiftUI

struct ContactDetailView: View {
    let contact: Contact

    var body: some View {
        List() {
            HStack(alignment: .center) {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                Spacer()
            }
            ContactCellView(text: contact.phone, image: .phone)
            ContactCellView(text: contact.email, image: .email)
        }
        .navigationTitle(contact.fullName)
    }
}

struct ContactDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailView(contact: Contact.getContact())
    }
}
