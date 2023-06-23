#if os(Linux)
  import Glibc
#else
  import Darwin
#endif

class Vector<Size: UInt64, Type: BinaryFloatingPoint> {
  private var data: [Type]

  func dotProduct(with other: Vector<Size, Type>) -> Type {
    innerProduct(with: other)
  }

  func innerProduct(with other: Vector<Size, Type>) -> Type {
    data.reduce(
      initialResult: 0,
      nextPartialResult: { (sum, item) -> Type in
        return sum + item
      })
  }

  func lnNorm(n: T) -> Type {
    data.reduce(
      0,
      {
        (sum: Type, item: Type) -> Type
        in
        return sum + pow(n, item)

      })
  }

  func size() -> UInt64 { Size }

  // MARK: - TODO
  //   func outerProduct<Size2: UInt64, Type2: Bin >(with other: Vector<Size2, Type2>) -> Matrix<>
}
