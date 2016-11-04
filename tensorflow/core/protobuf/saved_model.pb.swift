/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: tensorflow/core/protobuf/saved_model.proto
 *
 */

import Foundation
import SwiftProtobuf


///   SavedModel is the high level serialization format for TensorFlow Models.
///   See [todo: doc links, similar to session_bundle] for more information.
struct Tensorflow_SavedModel: ProtobufGeneratedMessage {
  public var swiftClassName: String {return "Tensorflow_SavedModel"}
  public var protoMessageName: String {return "SavedModel"}
  public var protoPackageName: String {return "tensorflow"}
  public var jsonFieldNames: [String: Int] {return [
    "savedModelSchemaVersion": 1,
    "metaGraphs": 2,
  ]}
  public var protoFieldNames: [String: Int] {return [
    "saved_model_schema_version": 1,
    "meta_graphs": 2,
  ]}

  ///   The schema version of the SavedModel instance. Used for versioning when
  ///   making future changes to the specification/implementation. Initial value
  ///   at release will be 1.
  public var savedModelSchemaVersion: Int64 = 0

  ///   One or more MetaGraphs.
  public var metaGraphs: [Tensorflow_MetaGraphDef] = []

  public init() {}

  public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
    let handled: Bool
    switch protoFieldNumber {
    case 1: handled = try setter.decodeSingularField(fieldType: ProtobufInt64.self, value: &savedModelSchemaVersion)
    case 2: handled = try setter.decodeRepeatedMessageField(fieldType: Tensorflow_MetaGraphDef.self, value: &metaGraphs)
    default:
      handled = false
    }
    return handled
  }

  public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
    if savedModelSchemaVersion != 0 {
      try visitor.visitSingularField(fieldType: ProtobufInt64.self, value: savedModelSchemaVersion, protoFieldNumber: 1, protoFieldName: "saved_model_schema_version", jsonFieldName: "savedModelSchemaVersion", swiftFieldName: "savedModelSchemaVersion")
    }
    if !metaGraphs.isEmpty {
      try visitor.visitRepeatedMessageField(value: metaGraphs, protoFieldNumber: 2, protoFieldName: "meta_graphs", jsonFieldName: "metaGraphs", swiftFieldName: "metaGraphs")
    }
  }

  public func _protoc_generated_isEqualTo(other: Tensorflow_SavedModel) -> Bool {
    if savedModelSchemaVersion != other.savedModelSchemaVersion {return false}
    if metaGraphs != other.metaGraphs {return false}
    return true
  }
}