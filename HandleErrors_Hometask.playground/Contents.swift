import Foundation


// =================================
// MARK: - Task 3B
// =================================

/*
 Перепишите решение задачи 3 из классной работы для выполнения следующих условий:

 1. Ракета не может полететь, если нет экипажа. Всего экипаж - `5 человек`.
    Для работы с экипажем выполните следующие шаги:

    1.1. Создайте еnum Role, который будет описывать обязанности членов экипажа:
            - `Командир`,
            - `Штурман`,
            - `Механик`,
            - `Медик`,
            - `Инженер`,
            - `Повар`,
            - `Стюард/Стюардесса`
            - `Самозванец` (Imposter)
         Каждый член данного перечисления должен содержать `стаж работы` - Int.

    1.2. Реализуйте структуру `Член Экипажа`. Каждый член экипажа имеет:
            - имя (name),
            - роль (role)
            - возраст (age)

    1.3. Реализуйте свойство `Экипаж`, которое будет хратить массив членов экипажа.
         Сделайте это свойство доступным только для чтения.

    1.4. Для посадки каждого члена экипажа реализуйте отдельный метод.

    1.5. Ракета не может полететь, если при подготовке экипажа допущены ошибки.
         Реализуйте обработку следующих ошибок:

            - Если `Командира` и/или `Штурмана` нет на борту, даже если членов экипажа достаточно, ракета не полетит.
              Верните ошибку - какого члена экипажа не хватает.
            - Если не хватает членов экипажа, верните сообщение - сколько члено экипажа не хватает.
            - Если на борту `Самозванец` - ракету запускать нельзя! Верните ошибку!
            - Если стаж хоть одного члена экипажа менее 3х лет. Сообщите Командному центру кто это.

            !!! Для обработки ошибок связанных с членами экипажа, реализуйте enum `RocketStaffError` !!!
            !!! Сообщения об ошибках выводите через `NSLocalizedString` !!!



 2. Оборудуем ракету для перевозки пассажиров.
    Для этого:

    2.1. Создайте структуру `Пассажир`.
         Каждый пассажир имеет:
            - имя (name),
            - пол (gender),
            - возраст (age)
            - массу (weight)

    2.2. Для Ракеты реализуйте приватный массив Пассажиры, который будет принимать объекты типа Пассажир.

    2.3. Реализуйте методы, которые позволят сажать пассажиров на ракету, как группами, так и единичных пассажиров.

    2.2. Ракета может полететь, если:
            - Количество пассажиров не более 10 человек
            - Общая масса пассажиров не более 700 кг
            - Возраст каждого пассажира должен находиться в диапазоне 18 - 55 лет.

    2.3. Реализуйте обработку следующих ошибок:
            - Если возраст любого из пассажиров не соответсвует норме, верните ошибку, а также сообщите, какой пассажир не может полететь
            - Если количество пассажиров не соответсвует норме, верните соответствующую ошибку
            - Если масса всех пассажиров превышает норму, даже если их количество меньше установленной, верните ошибку

        !!! Для обработки ошибок связанных с пассажирами, реализуйте enum RocketPassengerError !!!
        !!! Сообщения об ошибках выводите через NSLocalizedString !!!



 3. Руководство Космопорта решило, что ракета должна перевозить грузы.
    Для этого давайте выполним следующие шаги:

    3.1. Реализуйте структуру `Груз`
         Каждый объект типа `Груз` должен иметь:
            - Название (subject) - String
            - Цель назначения (target) - String?
            - Свойства (properties)

    3.2. Для описания свойств `Груза` реализуйте `enum Properties`, где каждый элемент будет содержать:
            - массу (Float)
            - опастность груза (Bool)

    3.3. Реализуйте закрытое свойство `Грузовой отсек`, который будет хранить наши грузы. Доступно только для чтения.

    3.4. Реализуйте метод загрузки грузов в отсек.

    3.5. Ракета не может полететь, если не выполнены следующие нормы по перевозке грузов:
         - Если общая масса грузов превышает 1000 килограмм, верните ошибку и значение того, на сколько превышен вес.
         - Если на борту содержится хотя бы один опасный груз - при этом выведите все опасные грузы.
         - Если не указана цель назначения.
         - Если название попадает в список запрещенных.
           (Для этого можете создать произвольный список запрещаемых грузов)
           Не учитывайте регистр текста.

        !!! Для обработки ошибок связанных с пассажирами, реализуйте enum RocketCargoError !!!
        !!! Сообщения об ошибках выводите через NSLocalizedString !!!


 4. Предполетная подготовка. Ракета не полетит, если не выполнены требования ниже.
    Для этого придется расширить `RocketError`

    4.1. Вес пассажиров и груза превышает 1700 килограмм.
    4.2. Если ракета содержит топлива менее 5000 литров (не долетит), сообщите - сколько не хватает.
    4.3. Если при подготовке произошла неизвестная ошибка.

    !!! Сообщения об ошибках выводите через NSLocalizedString !!!
 */



// MARK: - Solution 3B
// Ваше решение можете реализовать тут

//struct CrewMember {
//    var name: String
//    var role: Role
//    var age: Int
//}
//
//struct Passenger {
//    var name: String
//    var gender: String
//    var age: Int
//    var weight: Double
//}
//
//struct Cargo {
//    var subject: String
//    var target: String?
//    var properties: Propetries
//
//    enum Propetries {
//        case undangerous(weight : Double, dangerous: Bool)
//        case dangerous(weight : Double, dangerous: Bool)
//    }
//}
//
//enum Role: Equatable {
//    case commander(workExperience: Int)
//    case shturman(workExperience: Int)
//    case mechanic(workExperience: Int)
//    case medic(workExperience: Int)
//    case engineer(workExperience: Int)
//    case cook(workExperience: Int)
//    case stewardess(workExperience: Int)
//    case Imposter(workExperience: Int)
//
//    static func ==(lhs: Role, rhs: Role) -> Bool {
//            switch (lhs, rhs) {
//            case (.commander, .commander),
//                 (.shturman, .shturman),
//                 (.mechanic, .mechanic),
//                 (.medic, .medic),
//                 (.engineer, .engineer),
//                 (.cook, .cook),
//                 (.stewardess, .stewardess),
//                 (.Imposter, .Imposter):
//                return true
//            default:
//                return false
//            }
//        }
//}
//
//enum RocketError: Error {
//    case insufficientFuel(needed: Double)
//    case unknownError
//}
//
//enum RocketStaffError: Error {
//    case insufficientMemberOfCrew(member: Role)
//    case insufficientCrew(needed: Int)
//    case isImposterOnBord
//    case insufficientExperience(needed: Int, member: Role)
//}
//
//enum RocketPassengerError: Error {
//    case isAgeNotNormal(member: Passenger)
//    case isCountNotNormal
//    case isOverweight
//}
//
//enum CargoError: Error {
//    case isOverweight(overweight: Double)
//    case cargoIsDanger(name: Cargo)
//    case targetIsAbsent
//}
//
//extension RocketError: LocalizedError {
//    var errorDescription: String? {
//        switch self {
//        case .insufficientFuel(let needed):
//            return NSLocalizedString("Недостаточно  \(needed) литров топлива", comment: "")
//        case .unknownError:
//            return NSLocalizedString("Неизвестная ошибка", comment: "")
//        }
//    }
//}
//
//extension RocketStaffError: LocalizedError {
//    var errorDescription: String? {
//        switch self {
//        case .insufficientCrew(let needed):
//            return NSLocalizedString("Недостаточно членов экипажа, неодходино еще \(needed)", comment: "")
//        case .insufficientExperience(let needed, let member):
//            return NSLocalizedString("Недостаточно еще опыта у \(member), необходимо еще \(needed) год", comment: "")
//        case .insufficientMemberOfCrew(let member):
//            return NSLocalizedString("На борту отсутствует \(member)", comment: "")
//        case .isImposterOnBord:
//            return NSLocalizedString("Imposter on the bord!", comment: "")
//        }
//    }
//}
//
//extension RocketPassengerError: LocalizedError {
//    var errorDescription: String? {
//        switch self {
//        case .isAgeNotNormal(let member):
//            return NSLocalizedString("Возраст пассажира \(member.name) не допускается", comment: "")
//        case .isCountNotNormal:
//            return NSLocalizedString("Недопустимое число пассажиров недопустим", comment: "")
//        case .isOverweight:
//            return NSLocalizedString("На борту перевес", comment: "")
//        }
//    }
//}
//
//extension CargoError: LocalizedError {
//    var errorDescription: String? {
//        switch self {
//        case .cargoIsDanger(let member):
//            return NSLocalizedString("Груз опасен \(member) - не допускается", comment: "")
//        case .isOverweight(let overweight):
//            return NSLocalizedString("Перевес по грузу \(overweight) ", comment: "")
//        case .targetIsAbsent:
//            return NSLocalizedString("Цель назначения не указана", comment: "")
//        }
//    }
//}
//
//var crew: [CrewMember] {
//    return [CrewMember(name: "Roma", role: .commander(workExperience: 10), age: 20),
//            CrewMember(name: "Jon", role: .shturman(workExperience: 5), age: 30),
//            CrewMember(name: "Jack", role: .mechanic(workExperience: 2), age: 55),
//            CrewMember(name: "Petty", role: .medic(workExperience: 33), age: 27),
//            CrewMember(name: "Nick", role: .engineer(workExperience: 12), age: 36),
//            CrewMember(name: "Ann", role: .cook(workExperience: 4), age: 1),
//            CrewMember(name: "Alena", role: .stewardess(workExperience: 5), age: 21),
//            CrewMember(name: "Gery", role: .Imposter(workExperience: 4), age: 33)]
//}
//var crewCopy = crew
//var crewForFly: [CrewMember] = []
//var copyCargoHold = cargoHold
//
//private var passengerOnTheBoard: [Passenger] = []
//private var cargoHold: [Cargo] {
//    return []
//}
//
//func addMemberToRocket(member: Role, array: [CrewMember] = crewCopy) {
//
//    for item in array {
//        switch member {
//        case .commander, .Imposter, .cook, .engineer, .mechanic, .medic, .shturman, .stewardess:
//            if member == item.role {
//                crewForFly.append(item)
//            }
//        }
//    }
//}
//
//func addGroupOfPassengerToRocket(arrayOfPassenger: [Passenger]) {
//    passengerOnTheBoard.append(contentsOf: arrayOfPassenger)
//}
//
//func addPassengerToRocket(passenger: Passenger) {
//    passengerOnTheBoard.append(passenger)
//}
//
//func loadingCargo(cargo: [Cargo]) {
//    copyCargoHold.append(contentsOf: cargo)
//}
//
//func checkRocketStaff(array: [CrewMember] = crewForFly) throws {
//    for item in array {
//        guard crewForFly.count >= 5 else {
//            throw RocketStaffError.insufficientCrew(needed: 5 - crewForFly.count)
//        }
//        guard item.role != .Imposter(workExperience: 0) else {
//            throw RocketStaffError.isImposterOnBord
//        }
//    }
//    try array.forEach{
//        switch $0.role {
//        case .commander(let workExperience), .shturman(let workExperience), .mechanic(let workExperience),
//             .medic(let workExperience), .engineer(let workExperience), .cook(let workExperience),
//             .stewardess(let workExperience), .Imposter(let workExperience):
//            guard workExperience > 3 else {
//                throw RocketStaffError.insufficientExperience(needed: 3 - workExperience, member: $0.role)
//            }
//        }
//
//        guard array.contains(where: { $0.role == .commander(workExperience: 0) }) else {
//            throw RocketStaffError.insufficientMemberOfCrew(member: .commander(workExperience: 0))
//        }
//        guard array.contains(where: { $0.role == .shturman(workExperience: 0) }) else {
//            throw RocketStaffError.insufficientMemberOfCrew(member: .shturman(workExperience: 0))
//        }
//    }
//
//}
//
//func checkPassengerOnTheBoard(array: [Passenger] = passengerOnTheBoard) throws {
//    var resultWeight: Double = 0
//
//    for item in array {
//        resultWeight += item.weight
//    }
//    for item in array {
//        if item.age < 18 || item.age > 55 {
//            throw RocketPassengerError.isAgeNotNormal(member: item)
//        }
//    }
//
//    guard array.count < 11 else {
//        throw RocketPassengerError.isCountNotNormal
//    }
//    guard resultWeight <= 700 else {
//        throw RocketPassengerError.isOverweight
//    }
//}
//
//func checkCargoOnTheBoard(array: [Cargo] = copyCargoHold) throws {
//    var resultWeight: Double = 0
//    try array.forEach{
//        switch $0.properties {
//        case .dangerous(weight: let weight, dangerous: let dangerous), .undangerous(weight: let weight, dangerous: let dangerous):
//            resultWeight += weight
//            guard resultWeight <= 1000 else {
//                throw CargoError.isOverweight(overweight: resultWeight - 1000)
//            }
//            guard dangerous == true else {
//                throw CargoError.cargoIsDanger(name: $0)
//            }
//        }
//    }
//
//    for item in array {
//        if item.target == nil {
//        } else {
//            throw CargoError.targetIsAbsent
//        }
//    }
//}
//
//func startRocketIntoTheSpace(with isFuelOnBoard: Double) throws {
//    guard isFuelOnBoard >= 5000 else { throw RocketError.insufficientFuel(needed: 5000 - isFuelOnBoard) }
//}
//
//addMemberToRocket(member: .commander(workExperience: 0))
//addMemberToRocket(member: .medic(workExperience: 0))
//addMemberToRocket(member: .engineer(workExperience: 0))
//addMemberToRocket(member: .mechanic(workExperience: 0))
//addMemberToRocket(member: .shturman(workExperience: 0))
//
//addPassengerToRocket(passenger: Passenger(name: "Vasya", gender: "Man", age: 56, weight: 200))
//
//loadingCargo(cargo: [Cargo(subject: "Table", target: " ",
//                           properties: .dangerous(weight: 500, dangerous: true))])
//loadingCargo(cargo: [Cargo(subject: "Food", target: "To Los Angeles",
//                           properties: .undangerous(weight: 300, dangerous: true))])
//
//do {
//    try startRocketIntoTheSpace(with: 4200.50)
//} catch {
//    print(error.localizedDescription)
//}
//
//do {
//    try checkRocketStaff()
//    print("Rocket staff is normal!")
//} catch {
//    print(error.localizedDescription)
//}
//
//do {
//    try checkPassengerOnTheBoard()
//    print("Passenger is normal!")
//} catch {
//    print(error.localizedDescription)
//}
//
//do {
//    try checkCargoOnTheBoard()
//    print("Cargo is normal!")
//} catch {
//    print(error.localizedDescription)
//}


// =================================
// MARK: - Task 4B
// =================================

/*
 Перепишите решение задачи 4 из классной работы для выполнения следующих условий:

 1. Username пользователя должен быть длиной не менее 8 символов и не длиннее 20ти. Верните соответствующее сообщение.

 2. Username должен содержать хотя бы одну Заглавную букву, хотя бы одну цифру и символ "-".
    Укажите пользователю, какой символ в имени не подходит.

 3. Username не может состоять только из цифр. Верните соответствующее сообщение.

 4. Username не может состоять только из Заглавных букв. Верните соответствующее сообщение.

 5. Символы, кроме "-", запрещены! Верните соответствующее сообщение.

 6. Username не может начинаться с символа "-" или цифры. Верните соответствующее сообщение.

 7. Username не может заканчиваться на символ "-". Верните соответствующее сообщение.

 Для каждой конкретной ситуации реазуйте возврат ошибки, в понятном и очевидном виде для пользователя.
 Воспользуйтесь `NSLocalizedString`

 */



// MARK: - Solution 4B
// Ваше решение можете реализовать тут

enum ValidationError: Error {
    case tooShort
    case tooLong
    case incorrectSymbol(Character)
    case onlyNumber
    case upperCase
    case incorrectFirstSymbol
    case incorrectLastSymbol
    case capitalLetterIsAbsent
    case numberIsAbsent
}

func validate(username: String) throws {
    let chars: String = "-"
    var countOfCapitalLetter = 0
    var countOfNumbers = 0

    guard username.count > 7 else { throw ValidationError.tooShort }
    guard username.count < 21 else { throw ValidationError.tooLong }

    try Array(username).forEach {
        guard $0.isLetter || $0.isNumber || username.contains(chars) else { throw ValidationError.incorrectSymbol($0) }
    }

    for character in Array(username) {
        if character.isUppercase {
            countOfCapitalLetter += 1
        }
        if countOfCapitalLetter == username.count {
            throw ValidationError.upperCase
        }
        if character.isNumber {
            countOfNumbers += 1
        }
        if countOfNumbers == username.count {
            throw ValidationError.onlyNumber
        }
        if  username.first == "-" {
            throw ValidationError.incorrectFirstSymbol
        }
        if username.last == "-" {
            throw ValidationError.incorrectLastSymbol
        }
    }
    if countOfCapitalLetter == 0 {
        throw ValidationError.capitalLetterIsAbsent
    }
    if countOfNumbers == 0 {
        throw ValidationError.numberIsAbsent
    }
    
}

extension ValidationError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .tooShort:
            return NSLocalizedString("Your username needs to be at least 8 characters long",
                                     comment: "")
        case .tooLong:
            return NSLocalizedString("Your username needs to be at least less than 20 characters long",
                                     comment: "")
        case .incorrectSymbol(let symbol):
            let formatedString = NSLocalizedString("Your username can't contain the character '%@'",
                                    comment: "")
            return String(format: formatedString, String(symbol))
        case .onlyNumber:
            return NSLocalizedString("Your username consist of only numbers",
                                     comment: "")
        case .upperCase:
            return NSLocalizedString("Your username consist of only capital letters",
                                     comment: "")
        case .incorrectFirstSymbol:
            return NSLocalizedString("Your username must start with a letter!",
                                     comment: "")
        case .incorrectLastSymbol:
            return NSLocalizedString("Your username cannot end with a -",
                                     comment: "")
        case .capitalLetterIsAbsent:
            return NSLocalizedString("Your ussername haven't capital letter", comment: "")
        case .numberIsAbsent:
            return NSLocalizedString("Your username must contain at least one number. ", comment: "")
        }
    }
}

func validate(username: String, then handler: @escaping (ValidationError?) -> Void) {
    do {
        try validate(username: username)
        handler(nil)
    } catch {
        handler(error as? ValidationError)
    }
}

func userDidName(_ username: String) {
    do {
        try validate(username: username)
        print(username)
    } catch {
        print(username + " " + error.localizedDescription)
        print()
    }
}

userDidName("Arererere")


