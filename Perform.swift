import Foundation

func perform(_ expersion: @autoclosure() throws -> (), onError: @autoclosure() -> ()) {
    do {
        try expersion()
    } catch {
        onError()
    }
}

func perform(_ expersion: @autoclosure() throws -> (), onError: @escaping(Error) -> ()) {
    do {
        try expersion()
    } catch {
        onError(error)
    }
}

func perform<T>(_ expersion: @autoclosure() throws -> T, onError: @escaping(Error) -> ()) -> T? {
    do {
        return try expersion()
    } catch {
        onError(error)
        return nil
    }
}
