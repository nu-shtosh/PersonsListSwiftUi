import SwiftUI

struct DataStorage {
    static let shared = DataStorage()

    let surnames = [
        "Murphy",
        "Jankin",
        "Williams",
        "Black",
        "Robertson",
        "Butler",
        "Isaacson",
        "Smith",
        "Pennyworth"
    ]

    let names = [
        "John",
        "Sharon",
        "Aaron",
        "Steven",
        "Nicola",
        "Ted",
        "Bruce",
        "Carl",
        "Allan"
    ]

    let emails = [
        "qwer@gmail.com",
        "asdf@gmail.com",
        "zxcv@gmail.com",
        "tyui@gmail.com",
        "ghjk@gmail.com",
        "bnmv@gmail.com",
        "lnuo@gmail.com",
        "rtyr@gmail.com",
        "tyfr@gmail.com"
    ]

    let phoneNumbers = [
        "854760763",
        "574354272",
        "436266243",
        "362346432",
        "967957996",
        "132151556",
        "437572527",
        "246234743",
        "624627772",
    ]

    private init() {}
}
