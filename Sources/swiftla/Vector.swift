#if os(Linux)
  import Glibc
#else
  import Darwin
#endif

class Vector<Type: BinaryFloatingPoint> {
    private var data: [Type]
    private var size: Int {
        get {
            data.count
        }
    }

    init() {
    self.data = []
  }
  init(data: [Type]) {
    self.data = data
      
  }
  func dotProduct(with other: Vector<Type>) -> Type {
    innerProduct(with: other)
  }

  func innerProduct(with other: Vector<Type>) -> Type {
    data.reduce(
      0,
      { (sum, item) -> Type in
        return sum + item
      })
  }

  func lnNorm(n: Type) -> Type {
      let result = data.reduce(
      0,
      {
          (sum: Type, item: Type) -> Type
          in
          return sum + Type(pow(Double(item), Double(n)))
        })
    return Type(pow(Double(result), Double(1 / n)))
  }

  func getSize() -> Int { return size }

  // MARK: - TODO
  //   func outerProduct<Size2: UInt64, Type2: Bin >(with other: Vector<Size2, Type2>) -> Matrix<>
}
