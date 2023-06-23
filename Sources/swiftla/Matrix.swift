#if os(Linux)
  import Glibc
#else
  import Darwin
#endif

class Matrix<Type: AdditiveArithmetic> {
  private var rows: Int
  private var columns: Int
  private var columnsBased: Bool = true

  private var data: [[Type]]

  func multiplyFromLeft(
    with rhs: Matrix<Type>
  ) -> Matrix<Type> {
    Matrix<Type>()
  }
  func multiplyFromRight(
    with lhs: Matrix<Type>
  )
    -> Matrix<Type>
  {
    Matrix<Type>()
  }

  init() {
    data = [[Type]]()
    rows = 0
    columns = 0
  }
}
