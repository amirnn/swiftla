class Matrix<Rows: UInt64, Columns: UInt64, Type: AdditiveArithmetic, ColumnsBased: Bool> {
  private var data: [[Type]]

  func multiplyFromLeft<C2: UInt64, ColumnsBased2: Bool>(
    with rhs: Matrix<Columns, C2, Type, ColumnsBased2>
  )
    -> Matrix<
      Rows, C2, Type, ColumnsBased
    >
  func multiplyFromRight<R2: UInt64, ColumnsBased2: Bool>(
    with lhs: Matrix<R2, Rows, Type, ColumnsBased2>
  )
    -> Matrix<
      R2, Columns, Type, ColumnsBased
    >

  init() {
    data = [[Type]]()
  }
}
