import SwiftUI

struct MainTabView: View {
    let contacts = Contact.getContacts()
    
    var body: some View {
        TabView{
            ContactListView(contacts: contacts)
                .tabItem {
                    Image(systemName: "person.crop.circle.fill")
                    Text("Contacts")
                }
            ContactListDetailView(contacts: contacts)
                .tabItem {
                    Image(systemName: "person.crop.square.fill")
                    Text("Contacts Detail")
                }
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
