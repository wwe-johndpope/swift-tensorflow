/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: tensorflow/core/framework/op_def.proto
 *
 */

import Foundation
import SwiftProtobuf


///   Defines an operation. A NodeDef in a GraphDef specifies an Op by
///   using the "op" field which should match the name of a OpDef.
struct Tensorflow_OpDef: ProtobufGeneratedMessage {
  public var swiftClassName: String {return "Tensorflow_OpDef"}
  public var protoMessageName: String {return "OpDef"}
  public var protoPackageName: String {return "tensorflow"}
  public var jsonFieldNames: [String: Int] {return [
    "name": 1,
    "inputArg": 2,
    "outputArg": 3,
    "attr": 4,
    "deprecation": 8,
    "summary": 5,
    "description": 6,
    "isCommutative": 18,
    "isAggregate": 16,
    "isStateful": 17,
    "allowsUninitializedInput": 19,
  ]}
  public var protoFieldNames: [String: Int] {return [
    "name": 1,
    "input_arg": 2,
    "output_arg": 3,
    "attr": 4,
    "deprecation": 8,
    "summary": 5,
    "description": 6,
    "is_commutative": 18,
    "is_aggregate": 16,
    "is_stateful": 17,
    "allows_uninitialized_input": 19,
  ]}

  private class _StorageClass {
    typealias ProtobufExtendedMessage = Tensorflow_OpDef
    var _name: String = ""
    var _inputArg: [Tensorflow_OpDef.ArgDef] = []
    var _outputArg: [Tensorflow_OpDef.ArgDef] = []
    var _attr: [Tensorflow_OpDef.AttrDef] = []
    var _deprecation: Tensorflow_OpDeprecation? = nil
    var _summary: String = ""
    var _description_p: String = ""
    var _isCommutative: Bool = false
    var _isAggregate: Bool = false
    var _isStateful: Bool = false
    var _allowsUninitializedInput: Bool = false

    init() {}

    func decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
      let handled: Bool
      switch protoFieldNumber {
      case 1: handled = try setter.decodeSingularField(fieldType: ProtobufString.self, value: &_name)
      case 2: handled = try setter.decodeRepeatedMessageField(fieldType: Tensorflow_OpDef.ArgDef.self, value: &_inputArg)
      case 3: handled = try setter.decodeRepeatedMessageField(fieldType: Tensorflow_OpDef.ArgDef.self, value: &_outputArg)
      case 4: handled = try setter.decodeRepeatedMessageField(fieldType: Tensorflow_OpDef.AttrDef.self, value: &_attr)
      case 8: handled = try setter.decodeSingularMessageField(fieldType: Tensorflow_OpDeprecation.self, value: &_deprecation)
      case 5: handled = try setter.decodeSingularField(fieldType: ProtobufString.self, value: &_summary)
      case 6: handled = try setter.decodeSingularField(fieldType: ProtobufString.self, value: &_description_p)
      case 18: handled = try setter.decodeSingularField(fieldType: ProtobufBool.self, value: &_isCommutative)
      case 16: handled = try setter.decodeSingularField(fieldType: ProtobufBool.self, value: &_isAggregate)
      case 17: handled = try setter.decodeSingularField(fieldType: ProtobufBool.self, value: &_isStateful)
      case 19: handled = try setter.decodeSingularField(fieldType: ProtobufBool.self, value: &_allowsUninitializedInput)
      default:
        handled = false
      }
      return handled
    }

    func traverse(visitor: inout ProtobufVisitor) throws {
      if _name != "" {
        try visitor.visitSingularField(fieldType: ProtobufString.self, value: _name, protoFieldNumber: 1, protoFieldName: "name", jsonFieldName: "name", swiftFieldName: "name")
      }
      if !_inputArg.isEmpty {
        try visitor.visitRepeatedMessageField(value: _inputArg, protoFieldNumber: 2, protoFieldName: "input_arg", jsonFieldName: "inputArg", swiftFieldName: "inputArg")
      }
      if !_outputArg.isEmpty {
        try visitor.visitRepeatedMessageField(value: _outputArg, protoFieldNumber: 3, protoFieldName: "output_arg", jsonFieldName: "outputArg", swiftFieldName: "outputArg")
      }
      if !_attr.isEmpty {
        try visitor.visitRepeatedMessageField(value: _attr, protoFieldNumber: 4, protoFieldName: "attr", jsonFieldName: "attr", swiftFieldName: "attr")
      }
      if _summary != "" {
        try visitor.visitSingularField(fieldType: ProtobufString.self, value: _summary, protoFieldNumber: 5, protoFieldName: "summary", jsonFieldName: "summary", swiftFieldName: "summary")
      }
      if _description_p != "" {
        try visitor.visitSingularField(fieldType: ProtobufString.self, value: _description_p, protoFieldNumber: 6, protoFieldName: "description", jsonFieldName: "description", swiftFieldName: "description_p")
      }
      if let v = _deprecation {
        try visitor.visitSingularMessageField(value: v, protoFieldNumber: 8, protoFieldName: "deprecation", jsonFieldName: "deprecation", swiftFieldName: "deprecation")
      }
      if _isAggregate != false {
        try visitor.visitSingularField(fieldType: ProtobufBool.self, value: _isAggregate, protoFieldNumber: 16, protoFieldName: "is_aggregate", jsonFieldName: "isAggregate", swiftFieldName: "isAggregate")
      }
      if _isStateful != false {
        try visitor.visitSingularField(fieldType: ProtobufBool.self, value: _isStateful, protoFieldNumber: 17, protoFieldName: "is_stateful", jsonFieldName: "isStateful", swiftFieldName: "isStateful")
      }
      if _isCommutative != false {
        try visitor.visitSingularField(fieldType: ProtobufBool.self, value: _isCommutative, protoFieldNumber: 18, protoFieldName: "is_commutative", jsonFieldName: "isCommutative", swiftFieldName: "isCommutative")
      }
      if _allowsUninitializedInput != false {
        try visitor.visitSingularField(fieldType: ProtobufBool.self, value: _allowsUninitializedInput, protoFieldNumber: 19, protoFieldName: "allows_uninitialized_input", jsonFieldName: "allowsUninitializedInput", swiftFieldName: "allowsUninitializedInput")
      }
    }

    func isEqualTo(other: _StorageClass) -> Bool {
      if _name != other._name {return false}
      if _inputArg != other._inputArg {return false}
      if _outputArg != other._outputArg {return false}
      if _attr != other._attr {return false}
      if _deprecation != other._deprecation {return false}
      if _summary != other._summary {return false}
      if _description_p != other._description_p {return false}
      if _isCommutative != other._isCommutative {return false}
      if _isAggregate != other._isAggregate {return false}
      if _isStateful != other._isStateful {return false}
      if _allowsUninitializedInput != other._allowsUninitializedInput {return false}
      return true
    }

    func copy() -> _StorageClass {
      let clone = _StorageClass()
      clone._name = _name
      clone._inputArg = _inputArg
      clone._outputArg = _outputArg
      clone._attr = _attr
      clone._deprecation = _deprecation
      clone._summary = _summary
      clone._description_p = _description_p
      clone._isCommutative = _isCommutative
      clone._isAggregate = _isAggregate
      clone._isStateful = _isStateful
      clone._allowsUninitializedInput = _allowsUninitializedInput
      return clone
    }
  }

  private var _storage = _StorageClass()

  ///   For describing inputs and outputs.
  struct ArgDef: ProtobufGeneratedMessage {
    public var swiftClassName: String {return "Tensorflow_OpDef.ArgDef"}
    public var protoMessageName: String {return "ArgDef"}
    public var protoPackageName: String {return "tensorflow"}
    public var jsonFieldNames: [String: Int] {return [
      "name": 1,
      "description": 2,
      "type": 3,
      "typeAttr": 4,
      "numberAttr": 5,
      "typeListAttr": 6,
      "isRef": 16,
    ]}
    public var protoFieldNames: [String: Int] {return [
      "name": 1,
      "description": 2,
      "type": 3,
      "type_attr": 4,
      "number_attr": 5,
      "type_list_attr": 6,
      "is_ref": 16,
    ]}

    ///   Name for the input/output.  Should match the regexp "[a-z][a-z0-9_]*".
    public var name: String = ""

    ///   Human readable description.
    public var description_p: String = ""

    ///   Describes the type of one or more tensors that are accepted/produced
    ///   by this input/output arg.  The only legal combinations are:
    ///   * For a single tensor: either the "type" field is set or the
    ///     "type_attr" field is set to the name of an attr with type "type".
    ///   * For a sequence of tensors with the same type: the "number_attr"
    ///     field will be set to the name of an attr with type "int", and
    ///     either the "type" or "type_attr" field will be set as for
    ///     single tensors.
    ///   * For a sequence of tensors, the "type_list_attr" field will be set
    ///     to the name of an attr with type "list(type)".
    public var type: Tensorflow_DataType = Tensorflow_DataType.dtInvalid

    ///   if specified, attr must have type "type"
    public var typeAttr: String = ""

    ///   if specified, attr must have type "int"
    public var numberAttr: String = ""

    ///   If specified, attr must have type "list(type)", and none of
    ///   type, type_attr, and number_attr may be specified.
    public var typeListAttr: String = ""

    ///   For inputs: if true, the inputs are required to be refs.
    ///     By default, inputs can be either refs or non-refs.
    ///   For outputs: if true, outputs are refs, otherwise they are not.
    public var isRef: Bool = false

    public init() {}

    public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
      let handled: Bool
      switch protoFieldNumber {
      case 1: handled = try setter.decodeSingularField(fieldType: ProtobufString.self, value: &name)
      case 2: handled = try setter.decodeSingularField(fieldType: ProtobufString.self, value: &description_p)
      case 3: handled = try setter.decodeSingularField(fieldType: Tensorflow_DataType.self, value: &type)
      case 4: handled = try setter.decodeSingularField(fieldType: ProtobufString.self, value: &typeAttr)
      case 5: handled = try setter.decodeSingularField(fieldType: ProtobufString.self, value: &numberAttr)
      case 6: handled = try setter.decodeSingularField(fieldType: ProtobufString.self, value: &typeListAttr)
      case 16: handled = try setter.decodeSingularField(fieldType: ProtobufBool.self, value: &isRef)
      default:
        handled = false
      }
      return handled
    }

    public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
      if name != "" {
        try visitor.visitSingularField(fieldType: ProtobufString.self, value: name, protoFieldNumber: 1, protoFieldName: "name", jsonFieldName: "name", swiftFieldName: "name")
      }
      if description_p != "" {
        try visitor.visitSingularField(fieldType: ProtobufString.self, value: description_p, protoFieldNumber: 2, protoFieldName: "description", jsonFieldName: "description", swiftFieldName: "description_p")
      }
      if type != Tensorflow_DataType.dtInvalid {
        try visitor.visitSingularField(fieldType: Tensorflow_DataType.self, value: type, protoFieldNumber: 3, protoFieldName: "type", jsonFieldName: "type", swiftFieldName: "type")
      }
      if typeAttr != "" {
        try visitor.visitSingularField(fieldType: ProtobufString.self, value: typeAttr, protoFieldNumber: 4, protoFieldName: "type_attr", jsonFieldName: "typeAttr", swiftFieldName: "typeAttr")
      }
      if numberAttr != "" {
        try visitor.visitSingularField(fieldType: ProtobufString.self, value: numberAttr, protoFieldNumber: 5, protoFieldName: "number_attr", jsonFieldName: "numberAttr", swiftFieldName: "numberAttr")
      }
      if typeListAttr != "" {
        try visitor.visitSingularField(fieldType: ProtobufString.self, value: typeListAttr, protoFieldNumber: 6, protoFieldName: "type_list_attr", jsonFieldName: "typeListAttr", swiftFieldName: "typeListAttr")
      }
      if isRef != false {
        try visitor.visitSingularField(fieldType: ProtobufBool.self, value: isRef, protoFieldNumber: 16, protoFieldName: "is_ref", jsonFieldName: "isRef", swiftFieldName: "isRef")
      }
    }

    public func _protoc_generated_isEqualTo(other: Tensorflow_OpDef.ArgDef) -> Bool {
      if name != other.name {return false}
      if description_p != other.description_p {return false}
      if type != other.type {return false}
      if typeAttr != other.typeAttr {return false}
      if numberAttr != other.numberAttr {return false}
      if typeListAttr != other.typeListAttr {return false}
      if isRef != other.isRef {return false}
      return true
    }
  }

  ///   Description of the graph-construction-time configuration of this
  ///   Op.  That is to say, this describes the attr fields that will
  ///   be specified in the NodeDef.
  struct AttrDef: ProtobufGeneratedMessage {
    public var swiftClassName: String {return "Tensorflow_OpDef.AttrDef"}
    public var protoMessageName: String {return "AttrDef"}
    public var protoPackageName: String {return "tensorflow"}
    public var jsonFieldNames: [String: Int] {return [
      "name": 1,
      "type": 2,
      "defaultValue": 3,
      "description": 4,
      "hasMinimum": 5,
      "minimum": 6,
      "allowedValues": 7,
    ]}
    public var protoFieldNames: [String: Int] {return [
      "name": 1,
      "type": 2,
      "default_value": 3,
      "description": 4,
      "has_minimum": 5,
      "minimum": 6,
      "allowed_values": 7,
    ]}

    private class _StorageClass {
      typealias ProtobufExtendedMessage = Tensorflow_OpDef.AttrDef
      var _name: String = ""
      var _type: String = ""
      var _defaultValue: Tensorflow_AttrValue? = nil
      var _description_p: String = ""
      var _hasMinimum: Bool = false
      var _minimum: Int64 = 0
      var _allowedValues: Tensorflow_AttrValue? = nil

      init() {}

      func decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
        let handled: Bool
        switch protoFieldNumber {
        case 1: handled = try setter.decodeSingularField(fieldType: ProtobufString.self, value: &_name)
        case 2: handled = try setter.decodeSingularField(fieldType: ProtobufString.self, value: &_type)
        case 3: handled = try setter.decodeSingularMessageField(fieldType: Tensorflow_AttrValue.self, value: &_defaultValue)
        case 4: handled = try setter.decodeSingularField(fieldType: ProtobufString.self, value: &_description_p)
        case 5: handled = try setter.decodeSingularField(fieldType: ProtobufBool.self, value: &_hasMinimum)
        case 6: handled = try setter.decodeSingularField(fieldType: ProtobufInt64.self, value: &_minimum)
        case 7: handled = try setter.decodeSingularMessageField(fieldType: Tensorflow_AttrValue.self, value: &_allowedValues)
        default:
          handled = false
        }
        return handled
      }

      func traverse(visitor: inout ProtobufVisitor) throws {
        if _name != "" {
          try visitor.visitSingularField(fieldType: ProtobufString.self, value: _name, protoFieldNumber: 1, protoFieldName: "name", jsonFieldName: "name", swiftFieldName: "name")
        }
        if _type != "" {
          try visitor.visitSingularField(fieldType: ProtobufString.self, value: _type, protoFieldNumber: 2, protoFieldName: "type", jsonFieldName: "type", swiftFieldName: "type")
        }
        if let v = _defaultValue {
          try visitor.visitSingularMessageField(value: v, protoFieldNumber: 3, protoFieldName: "default_value", jsonFieldName: "defaultValue", swiftFieldName: "defaultValue")
        }
        if _description_p != "" {
          try visitor.visitSingularField(fieldType: ProtobufString.self, value: _description_p, protoFieldNumber: 4, protoFieldName: "description", jsonFieldName: "description", swiftFieldName: "description_p")
        }
        if _hasMinimum != false {
          try visitor.visitSingularField(fieldType: ProtobufBool.self, value: _hasMinimum, protoFieldNumber: 5, protoFieldName: "has_minimum", jsonFieldName: "hasMinimum", swiftFieldName: "hasMinimum")
        }
        if _minimum != 0 {
          try visitor.visitSingularField(fieldType: ProtobufInt64.self, value: _minimum, protoFieldNumber: 6, protoFieldName: "minimum", jsonFieldName: "minimum", swiftFieldName: "minimum")
        }
        if let v = _allowedValues {
          try visitor.visitSingularMessageField(value: v, protoFieldNumber: 7, protoFieldName: "allowed_values", jsonFieldName: "allowedValues", swiftFieldName: "allowedValues")
        }
      }

      func isEqualTo(other: _StorageClass) -> Bool {
        if _name != other._name {return false}
        if _type != other._type {return false}
        if _defaultValue != other._defaultValue {return false}
        if _description_p != other._description_p {return false}
        if _hasMinimum != other._hasMinimum {return false}
        if _minimum != other._minimum {return false}
        if _allowedValues != other._allowedValues {return false}
        return true
      }

      func copy() -> _StorageClass {
        let clone = _StorageClass()
        clone._name = _name
        clone._type = _type
        clone._defaultValue = _defaultValue
        clone._description_p = _description_p
        clone._hasMinimum = _hasMinimum
        clone._minimum = _minimum
        clone._allowedValues = _allowedValues
        return clone
      }
    }

    private var _storage = _StorageClass()

    ///   A descriptive name for the argument.  May be used, e.g. by the
    ///   Python client, as a keyword argument name, and so should match
    ///   the regexp "[a-z][a-z0-9_]+".
    public var name: String {
      get {return _storage._name}
      set {_uniqueStorage()._name = newValue}
    }

    ///   One of the type names from attr_value.proto ("string", "list(string)",
    ///   "int", etc.).
    public var type: String {
      get {return _storage._type}
      set {_uniqueStorage()._type = newValue}
    }

    ///   A reasonable default for this attribute if the user does not supply
    ///   a value.  If not specified, the user must supply a value.
    public var defaultValue: Tensorflow_AttrValue {
      get {return _storage._defaultValue ?? Tensorflow_AttrValue()}
      set {_uniqueStorage()._defaultValue = newValue}
    }
    public var hasDefaultValue: Bool {
      return _storage._defaultValue != nil
    }
    public mutating func clearDefaultValue() {
      return _storage._defaultValue = nil
    }

    ///   Human-readable description.
    public var description_p: String {
      get {return _storage._description_p}
      set {_uniqueStorage()._description_p = newValue}
    }

    //  TODO(josh11b): bool is_optional?

    //  --- Constraints ---
    //  These constraints are only in effect if specified.  Default is no
    //  constraints.

    ///   For type == "int", this is a minimum value.  For "list(___)"
    ///   types, this is the minimum length.
    public var hasMinimum: Bool {
      get {return _storage._hasMinimum}
      set {_uniqueStorage()._hasMinimum = newValue}
    }

    public var minimum: Int64 {
      get {return _storage._minimum}
      set {_uniqueStorage()._minimum = newValue}
    }

    ///   The set of allowed values.  Has type that is the "list" version
    ///   of the "type" field above (uses the "list" field of AttrValue).
    ///   If type == "type" or "list(type)" above, then the "type" field
    ///   of "allowed_values.list" has the set of allowed DataTypes.
    ///   If type == "string" or "list(string)", then the "s" field of
    ///   "allowed_values.list" has the set of allowed strings.
    public var allowedValues: Tensorflow_AttrValue {
      get {return _storage._allowedValues ?? Tensorflow_AttrValue()}
      set {_uniqueStorage()._allowedValues = newValue}
    }
    public var hasAllowedValues: Bool {
      return _storage._allowedValues != nil
    }
    public mutating func clearAllowedValues() {
      return _storage._allowedValues = nil
    }

    public init() {}

    public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
      return try _uniqueStorage().decodeField(setter: &setter, protoFieldNumber: protoFieldNumber)
    }

    public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
      try _storage.traverse(visitor: &visitor)
    }

    public func _protoc_generated_isEqualTo(other: Tensorflow_OpDef.AttrDef) -> Bool {
      return _storage === other._storage || _storage.isEqualTo(other: other._storage)
    }

    private mutating func _uniqueStorage() -> _StorageClass {
      if !isKnownUniquelyReferenced(&_storage) {
        _storage = _storage.copy()
      }
      return _storage
    }
  }

  ///   Op names starting with an underscore are reserved for internal use.
  ///   Names should be CamelCase and match the regexp "[A-Z][a-zA-Z0-9_]*".
  public var name: String {
    get {return _storage._name}
    set {_uniqueStorage()._name = newValue}
  }

  ///   Description of the input(s).
  public var inputArg: [Tensorflow_OpDef.ArgDef] {
    get {return _storage._inputArg}
    set {_uniqueStorage()._inputArg = newValue}
  }

  ///   Description of the output(s).
  public var outputArg: [Tensorflow_OpDef.ArgDef] {
    get {return _storage._outputArg}
    set {_uniqueStorage()._outputArg = newValue}
  }

  public var attr: [Tensorflow_OpDef.AttrDef] {
    get {return _storage._attr}
    set {_uniqueStorage()._attr = newValue}
  }

  ///   Optional deprecation based on GraphDef versions.
  public var deprecation: Tensorflow_OpDeprecation {
    get {return _storage._deprecation ?? Tensorflow_OpDeprecation()}
    set {_uniqueStorage()._deprecation = newValue}
  }
  public var hasDeprecation: Bool {
    return _storage._deprecation != nil
  }
  public mutating func clearDeprecation() {
    return _storage._deprecation = nil
  }

  ///   One-line human-readable description of what the Op does.
  public var summary: String {
    get {return _storage._summary}
    set {_uniqueStorage()._summary = newValue}
  }

  ///   Additional, longer human-readable description of what the Op does.
  public var description_p: String {
    get {return _storage._description_p}
    set {_uniqueStorage()._description_p = newValue}
  }

  //  -------------------------------------------------------------------------
  //  Which optimizations this operation can participate in.

  ///   True if the operation is commutative ("op(a,b) == op(b,a)" for all inputs)
  public var isCommutative: Bool {
    get {return _storage._isCommutative}
    set {_uniqueStorage()._isCommutative = newValue}
  }

  ///   If is_aggregate is true, then this operation accepts N >= 2
  ///   inputs and produces 1 output all of the same type.  Should be
  ///   associative and commutative, and produce output with the same
  ///   shape as the input.  The optimizer may replace an aggregate op
  ///   taking input from multiple devices with a tree of aggregate ops
  ///   that aggregate locally within each device (and possibly within
  ///   groups of nearby devices) before communicating.
  ///   TODO(josh11b): Implement that optimization.
  public var isAggregate: Bool {
    get {return _storage._isAggregate}
    set {_uniqueStorage()._isAggregate = newValue}
  }

  //  Other optimizations go here, like
  //    can_alias_input, rewrite_when_output_unused, partitioning_strategy, etc.

  //  -------------------------------------------------------------------------
  //  Optimization constraints.

  ///   By default Ops may be moved between devices.  Stateful ops should
  ///   either not be moved, or should only be moved if that state can also
  ///   be moved (e.g. via some sort of save / restore).
  ///   Stateful ops are guaranteed to never be optimized away by Common
  ///   Subexpression Elimination (CSE).
  public var isStateful: Bool {
    get {return _storage._isStateful}
    set {_uniqueStorage()._isStateful = newValue}
  }

  //  -------------------------------------------------------------------------
  //  Non-standard options.

  ///   By default, all inputs to an Op must be initialized Tensors.  Ops
  ///   that may initialize tensors for the first time should set this
  ///   field to true, to allow the Op to take an uninitialized Tensor as
  ///   input.
  public var allowsUninitializedInput: Bool {
    get {return _storage._allowsUninitializedInput}
    set {_uniqueStorage()._allowsUninitializedInput = newValue}
  }

  public init() {}

  public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
    return try _uniqueStorage().decodeField(setter: &setter, protoFieldNumber: protoFieldNumber)
  }

  public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
    try _storage.traverse(visitor: &visitor)
  }

  public func _protoc_generated_isEqualTo(other: Tensorflow_OpDef) -> Bool {
    return _storage === other._storage || _storage.isEqualTo(other: other._storage)
  }

  private mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _storage.copy()
    }
    return _storage
  }
}

///   Information about version-dependent deprecation of an op
struct Tensorflow_OpDeprecation: ProtobufGeneratedMessage {
  public var swiftClassName: String {return "Tensorflow_OpDeprecation"}
  public var protoMessageName: String {return "OpDeprecation"}
  public var protoPackageName: String {return "tensorflow"}
  public var jsonFieldNames: [String: Int] {return [
    "version": 1,
    "explanation": 2,
  ]}
  public var protoFieldNames: [String: Int] {return [
    "version": 1,
    "explanation": 2,
  ]}

  ///   First GraphDef version at which the op is disallowed.
  public var version: Int32 = 0

  ///   Explanation of why it was deprecated and what to use instead.
  public var explanation: String = ""

  public init() {}

  public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
    let handled: Bool
    switch protoFieldNumber {
    case 1: handled = try setter.decodeSingularField(fieldType: ProtobufInt32.self, value: &version)
    case 2: handled = try setter.decodeSingularField(fieldType: ProtobufString.self, value: &explanation)
    default:
      handled = false
    }
    return handled
  }

  public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
    if version != 0 {
      try visitor.visitSingularField(fieldType: ProtobufInt32.self, value: version, protoFieldNumber: 1, protoFieldName: "version", jsonFieldName: "version", swiftFieldName: "version")
    }
    if explanation != "" {
      try visitor.visitSingularField(fieldType: ProtobufString.self, value: explanation, protoFieldNumber: 2, protoFieldName: "explanation", jsonFieldName: "explanation", swiftFieldName: "explanation")
    }
  }

  public func _protoc_generated_isEqualTo(other: Tensorflow_OpDeprecation) -> Bool {
    if version != other.version {return false}
    if explanation != other.explanation {return false}
    return true
  }
}

///   A collection of OpDefs
struct Tensorflow_OpList: ProtobufGeneratedMessage {
  public var swiftClassName: String {return "Tensorflow_OpList"}
  public var protoMessageName: String {return "OpList"}
  public var protoPackageName: String {return "tensorflow"}
  public var jsonFieldNames: [String: Int] {return [
    "op": 1,
  ]}
  public var protoFieldNames: [String: Int] {return [
    "op": 1,
  ]}

  public var op: [Tensorflow_OpDef] = []

  public init() {}

  public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
    let handled: Bool
    switch protoFieldNumber {
    case 1: handled = try setter.decodeRepeatedMessageField(fieldType: Tensorflow_OpDef.self, value: &op)
    default:
      handled = false
    }
    return handled
  }

  public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
    if !op.isEmpty {
      try visitor.visitRepeatedMessageField(value: op, protoFieldNumber: 1, protoFieldName: "op", jsonFieldName: "op", swiftFieldName: "op")
    }
  }

  public func _protoc_generated_isEqualTo(other: Tensorflow_OpList) -> Bool {
    if op != other.op {return false}
    return true
  }
}