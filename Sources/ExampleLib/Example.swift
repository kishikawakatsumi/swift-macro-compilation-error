import Foundation

public class Example {
  public init() {}

  public func f(closure: (Example) throws -> Bool = { _ in true }) {}

  public func g<T>(_ expr: @autoclosure () throws -> T, i: Int) rethrows -> T {
    let val = try expr()
    return val
  }
}
