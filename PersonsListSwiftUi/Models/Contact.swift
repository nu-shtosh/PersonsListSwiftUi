import SwiftUI

struct Contact: Identifiable {
    let id: Int
    let name: String
    let surname: String
    let email: String
    let phone: String

    var fullName: String {
        "\(name) \(surname)"
    }
}

// MARK: - Static methods
extension Contact {
    static func getContacts() -> [Contact] {
        var contacts: [Contact] = []

        let names = DataStorage.shared.names.shuffled()
        let surnames = DataStorage.shared.surnames.shuffled()
        let emails = DataStorage.shared.emails.shuffled()
        let phoneNumbers = DataStorage.shared.phoneNumbers.shuffled()

        for index in 0..<names.count {
            let contact = Contact(
                id: index,
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                phone: phoneNumbers[index]
            )
            contacts.append(contact)
        }

        return contacts
    }

    static func getContact() -> Contact {
        Contact.getContacts().randomElement() ?? Contact(id: -1,
                                                         name: "Delias",
                                                         surname: "Incognitus",
                                                         email: "Admin@admin.ru",
                                                         phone: "8800553535")
    }
}

enum ContactImage: String {
    case phone = "phone"
    case email = "tray"
}
