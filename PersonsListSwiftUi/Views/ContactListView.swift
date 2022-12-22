import SwiftUI

struct ContactListView: View {
    let contacts: [Contact]

    var body: some View {
        NavigationStack {
            List(contacts) { contact in
                NavigationLink(destination: ContactDetailView(contact: contact)) {
                    Text(contact.fullName)
                }
            }
            .listStyle(.grouped)
            .navigationTitle("Contacts")
        }
    }
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView(contacts: Contact.getContacts())
    }
}
