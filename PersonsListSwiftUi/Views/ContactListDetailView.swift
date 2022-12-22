import SwiftUI

struct ContactListDetailView: View {
    let contacts: [Contact]

    var body: some View {
        NavigationStack {
            List(contacts) { contact in
                Section(contact.fullName) {
                    ContactCellView(text: contact.phone, image: .phone)
                    ContactCellView(text: contact.email, image: .email)
                }
            }
            .background(Color.white)
            .navigationTitle("Numbers")
        }
        .background(Color.white)
    }
}

struct ContactListDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListDetailView(contacts: Contact.getContacts())
    }
}
