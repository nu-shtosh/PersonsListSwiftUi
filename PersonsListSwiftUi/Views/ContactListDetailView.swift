import SwiftUI

struct ContactListDetailView: View {
    let contacts: [Contact]

    var body: some View {
        NavigationStack {
            List(contacts) { contact in
//                Section(contact.fullName) {
                    Text(contact.fullName)
                        .bold()
                        .foregroundColor(.gray)
                        .padding(.top, 16)
                    ContactCellView(text: contact.phone, image: .phone)
                    ContactCellView(text: contact.email, image: .email)
                }
//            }
            .background(Color.white)
            .listStyle(.grouped)
            .navigationTitle("Contacts Detail")
        }
        .background(Color.white)
    }
}

struct ContactListDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListDetailView(contacts: Contact.getContacts())
    }
}
