module Cube = {
  type cubeness
  type cubenessProp = [#bool(bool) | #float(float)]

  let cubeness = cubenessProp => {
    switch cubenessProp {
    | #bool(value) => Obj.magic(value)
    | #float(value) => Obj.magic(value)
    }
  }

  @module("./JsCrazyLib") @react.component
  external make: (~cubeness: cubeness) => React.element = "Cube"
}
