import SwiftSyntax
import SwiftSyntaxMacros

public struct ExampleMacro: ExpressionMacro {
  public static func expansion(
    of node: some FreestandingMacroExpansionSyntax,
    in context: some MacroExpansionContext
  ) -> ExprSyntax {
    return ExprSyntax(
      stringLiteral: """
      Example().f() {
        let v = $0.g(0, i: 0)
        return v == v
      }
      """
    )
    .with(\.leadingTrivia, node.leadingTrivia)
  }
}
