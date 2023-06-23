class Matrix<Row, Columns, T, ColumnsBased> where Width: Int, Height: Int, ColumnsBased: Bool {
  private var data: Array<Array<T, Row>, Columns>
}
