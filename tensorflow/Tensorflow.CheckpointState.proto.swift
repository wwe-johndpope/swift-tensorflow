/// Generated by the Protocol Buffers 3.2.0 compiler.  DO NOT EDIT!
/// Protobuf-swift version: 3.0.13
/// Source file "checkpoint_state.proto"
/// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct Tensorflow { }

public extension Tensorflow {
    public struct CheckpointStateRoot {
        public static let `default` = CheckpointStateRoot()
        public var extensionRegistry:ExtensionRegistry

        init() {
            extensionRegistry = ExtensionRegistry()
            registerAllExtensions(registry: extensionRegistry)
        }
        public func registerAllExtensions(registry: ExtensionRegistry) {
        }
    }

    /// Protocol buffer representing the checkpoint state.
    /// TODO(touts): Add other attributes as needed.
    final public class CheckpointState : GeneratedMessage {

        public static func == (lhs: Tensorflow.CheckpointState, rhs: Tensorflow.CheckpointState) -> Bool {
            if lhs === rhs {
                return true
            }
            var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
            fieldCheck = fieldCheck && (lhs.hasModelCheckpointPath == rhs.hasModelCheckpointPath) && (!lhs.hasModelCheckpointPath || lhs.modelCheckpointPath == rhs.modelCheckpointPath)
            fieldCheck = fieldCheck && (lhs.allModelCheckpointPaths == rhs.allModelCheckpointPaths)
            fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
            return fieldCheck
        }

        /// Path to the most-recent model checkpoint.
        public fileprivate(set) var modelCheckpointPath:String = ""
        public fileprivate(set) var hasModelCheckpointPath:Bool = false

        /// Paths to all not-yet-deleted model checkpoints, sorted from oldest to
        /// newest.
        /// Note that the value of model_checkpoint_path should be the last item in
        /// this list.
        public fileprivate(set) var allModelCheckpointPaths:Array<String> = Array<String>()
        required public init() {
            super.init()
        }
        override public func isInitialized() -> Bool {
            return true
        }
        override public func writeTo(codedOutputStream: CodedOutputStream) throws {
            if hasModelCheckpointPath {
                try codedOutputStream.writeString(fieldNumber: 1, value:modelCheckpointPath)
            }
            if !allModelCheckpointPaths.isEmpty {
                for oneValueallModelCheckpointPaths in allModelCheckpointPaths {
                    try codedOutputStream.writeString(fieldNumber: 2, value:oneValueallModelCheckpointPaths)
                }
            }
            try unknownFields.writeTo(codedOutputStream: codedOutputStream)
        }
        override public func serializedSize() -> Int32 {
            var serialize_size:Int32 = memoizedSerializedSize
            if serialize_size != -1 {
             return serialize_size
            }

            serialize_size = 0
            if hasModelCheckpointPath {
                serialize_size += modelCheckpointPath.computeStringSize(fieldNumber: 1)
            }
            var dataSizeAllModelCheckpointPaths:Int32 = 0
            for oneValueallModelCheckpointPaths in allModelCheckpointPaths {
                dataSizeAllModelCheckpointPaths += oneValueallModelCheckpointPaths.computeStringSizeNoTag()
            }
            serialize_size += dataSizeAllModelCheckpointPaths
            serialize_size += 1 * Int32(allModelCheckpointPaths.count)
            serialize_size += unknownFields.serializedSize()
            memoizedSerializedSize = serialize_size
            return serialize_size
        }
        public class func getBuilder() -> Tensorflow.CheckpointState.Builder {
            return Tensorflow.CheckpointState.classBuilder() as! Tensorflow.CheckpointState.Builder
        }
        public func getBuilder() -> Tensorflow.CheckpointState.Builder {
            return classBuilder() as! Tensorflow.CheckpointState.Builder
        }
        override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
            return Tensorflow.CheckpointState.Builder()
        }
        override public func classBuilder() -> ProtocolBuffersMessageBuilder {
            return Tensorflow.CheckpointState.Builder()
        }
        public func toBuilder() throws -> Tensorflow.CheckpointState.Builder {
            return try Tensorflow.CheckpointState.builderWithPrototype(prototype:self)
        }
        public class func builderWithPrototype(prototype:Tensorflow.CheckpointState) throws -> Tensorflow.CheckpointState.Builder {
            return try Tensorflow.CheckpointState.Builder().mergeFrom(other:prototype)
        }
        override public func encode() throws -> Dictionary<String,Any> {
            guard isInitialized() else {
                throw ProtocolBuffersError.invalidProtocolBuffer("Uninitialized Message")
            }

            var jsonMap:Dictionary<String,Any> = Dictionary<String,Any>()
            if hasModelCheckpointPath {
                jsonMap["modelCheckpointPath"] = modelCheckpointPath
            }
            if !allModelCheckpointPaths.isEmpty {
                var jsonArrayAllModelCheckpointPaths:Array<String> = []
                for oneValueAllModelCheckpointPaths in allModelCheckpointPaths {
                    jsonArrayAllModelCheckpointPaths.append(oneValueAllModelCheckpointPaths)
                }
                jsonMap["allModelCheckpointPaths"] = jsonArrayAllModelCheckpointPaths
            }
            return jsonMap
        }
        override class public func decode(jsonMap:Dictionary<String,Any>) throws -> Tensorflow.CheckpointState {
            return try Tensorflow.CheckpointState.Builder.decodeToBuilder(jsonMap:jsonMap).build()
        }
        override class public func fromJSON(data:Data) throws -> Tensorflow.CheckpointState {
            return try Tensorflow.CheckpointState.Builder.fromJSONToBuilder(data:data).build()
        }
        override public func getDescription(indent:String) throws -> String {
            var output = ""
            if hasModelCheckpointPath {
                output += "\(indent) modelCheckpointPath: \(modelCheckpointPath) \n"
            }
            var allModelCheckpointPathsElementIndex:Int = 0
            for oneValueAllModelCheckpointPaths in allModelCheckpointPaths  {
                output += "\(indent) allModelCheckpointPaths[\(allModelCheckpointPathsElementIndex)]: \(oneValueAllModelCheckpointPaths)\n"
                allModelCheckpointPathsElementIndex += 1
            }
            output += unknownFields.getDescription(indent: indent)
            return output
        }
        override public var hashValue:Int {
            get {
                var hashCode:Int = 7
                if hasModelCheckpointPath {
                    hashCode = (hashCode &* 31) &+ modelCheckpointPath.hashValue
                }
                for oneValueAllModelCheckpointPaths in allModelCheckpointPaths {
                    hashCode = (hashCode &* 31) &+ oneValueAllModelCheckpointPaths.hashValue
                }
                hashCode = (hashCode &* 31) &+  unknownFields.hashValue
                return hashCode
            }
        }


        //Meta information declaration start

        override public class func className() -> String {
            return "Tensorflow.CheckpointState"
        }
        override public func className() -> String {
            return "Tensorflow.CheckpointState"
        }
        //Meta information declaration end

        final public class Builder : GeneratedMessageBuilder {
            fileprivate var builderResult:Tensorflow.CheckpointState = Tensorflow.CheckpointState()
            public func getMessage() -> Tensorflow.CheckpointState {
                return builderResult
            }

            required override public init () {
                super.init()
            }
            /// Path to the most-recent model checkpoint.
            public var modelCheckpointPath:String {
                get {
                    return builderResult.modelCheckpointPath
                }
                set (value) {
                    builderResult.hasModelCheckpointPath = true
                    builderResult.modelCheckpointPath = value
                }
            }
            public var hasModelCheckpointPath:Bool {
                get {
                    return builderResult.hasModelCheckpointPath
                }
            }
            @discardableResult
            public func setModelCheckpointPath(_ value:String) -> Tensorflow.CheckpointState.Builder {
                self.modelCheckpointPath = value
                return self
            }
            @discardableResult
            public func clearModelCheckpointPath() -> Tensorflow.CheckpointState.Builder{
                builderResult.hasModelCheckpointPath = false
                builderResult.modelCheckpointPath = ""
                return self
            }
            /// Paths to all not-yet-deleted model checkpoints, sorted from oldest to
            /// newest.
            /// Note that the value of model_checkpoint_path should be the last item in
            /// this list.
            public var allModelCheckpointPaths:Array<String> {
                get {
                    return builderResult.allModelCheckpointPaths
                }
                set (array) {
                    builderResult.allModelCheckpointPaths = array
                }
            }
            @discardableResult
            public func setAllModelCheckpointPaths(_ value:Array<String>) -> Tensorflow.CheckpointState.Builder {
                self.allModelCheckpointPaths = value
                return self
            }
            @discardableResult
            public func clearAllModelCheckpointPaths() -> Tensorflow.CheckpointState.Builder {
                builderResult.allModelCheckpointPaths.removeAll(keepingCapacity: false)
                return self
            }
            override public var internalGetResult:GeneratedMessage {
                get {
                    return builderResult
                }
            }
            @discardableResult
            override public func clear() -> Tensorflow.CheckpointState.Builder {
                builderResult = Tensorflow.CheckpointState()
                return self
            }
            override public func clone() throws -> Tensorflow.CheckpointState.Builder {
                return try Tensorflow.CheckpointState.builderWithPrototype(prototype:builderResult)
            }
            override public func build() throws -> Tensorflow.CheckpointState {
                try checkInitialized()
                return buildPartial()
            }
            public func buildPartial() -> Tensorflow.CheckpointState {
                let returnMe:Tensorflow.CheckpointState = builderResult
                return returnMe
            }
            @discardableResult
            public func mergeFrom(other:Tensorflow.CheckpointState) throws -> Tensorflow.CheckpointState.Builder {
                if other == Tensorflow.CheckpointState() {
                    return self
                }
                if other.hasModelCheckpointPath {
                    modelCheckpointPath = other.modelCheckpointPath
                }
                if !other.allModelCheckpointPaths.isEmpty {
                    builderResult.allModelCheckpointPaths += other.allModelCheckpointPaths
                }
                try merge(unknownField: other.unknownFields)
                return self
            }
            @discardableResult
            override public func mergeFrom(codedInputStream: CodedInputStream) throws -> Tensorflow.CheckpointState.Builder {
                return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
            }
            @discardableResult
            override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Tensorflow.CheckpointState.Builder {
                let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(copyFrom:self.unknownFields)
                while (true) {
                    let protobufTag = try codedInputStream.readTag()
                    switch protobufTag {
                    case 0: 
                        self.unknownFields = try unknownFieldsBuilder.build()
                        return self

                    case 10:
                        modelCheckpointPath = try codedInputStream.readString()

                    case 18:
                        allModelCheckpointPaths += [try codedInputStream.readString()]

                    default:
                        if (!(try parse(codedInputStream:codedInputStream, unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
                            unknownFields = try unknownFieldsBuilder.build()
                            return self
                        }
                    }
                }
            }
            class override public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> Tensorflow.CheckpointState.Builder {
                let resultDecodedBuilder = Tensorflow.CheckpointState.Builder()
                if let jsonValueModelCheckpointPath = jsonMap["modelCheckpointPath"] as? String {
                    resultDecodedBuilder.modelCheckpointPath = jsonValueModelCheckpointPath
                }
                if let jsonValueAllModelCheckpointPaths = jsonMap["allModelCheckpointPaths"] as? Array<String> {
                    var jsonArrayAllModelCheckpointPaths:Array<String> = []
                    for oneValueAllModelCheckpointPaths in jsonValueAllModelCheckpointPaths {
                        jsonArrayAllModelCheckpointPaths.append(oneValueAllModelCheckpointPaths)
                    }
                    resultDecodedBuilder.allModelCheckpointPaths = jsonArrayAllModelCheckpointPaths
                }
                return resultDecodedBuilder
            }
            override class public func fromJSONToBuilder(data:Data) throws -> Tensorflow.CheckpointState.Builder {
                let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
                guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
                  throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
                }
                return try Tensorflow.CheckpointState.Builder.decodeToBuilder(jsonMap:jsDataCast)
            }
        }

    }

}
extension Tensorflow.CheckpointState: GeneratedMessageProtocol {
    public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<Tensorflow.CheckpointState> {
        var mergedArray = Array<Tensorflow.CheckpointState>()
        while let value = try parseDelimitedFrom(inputStream: inputStream) {
          mergedArray.append(value)
        }
        return mergedArray
    }
    public class func parseDelimitedFrom(inputStream: InputStream) throws -> Tensorflow.CheckpointState? {
        return try Tensorflow.CheckpointState.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
    }
    public class func parseFrom(data: Data) throws -> Tensorflow.CheckpointState {
        return try Tensorflow.CheckpointState.Builder().mergeFrom(data: data, extensionRegistry:Tensorflow.CheckpointStateRoot.default.extensionRegistry).build()
    }
    public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> Tensorflow.CheckpointState {
        return try Tensorflow.CheckpointState.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(inputStream: InputStream) throws -> Tensorflow.CheckpointState {
        return try Tensorflow.CheckpointState.Builder().mergeFrom(inputStream: inputStream).build()
    }
    public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> Tensorflow.CheckpointState {
        return try Tensorflow.CheckpointState.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream) throws -> Tensorflow.CheckpointState {
        return try Tensorflow.CheckpointState.Builder().mergeFrom(codedInputStream: codedInputStream).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Tensorflow.CheckpointState {
        return try Tensorflow.CheckpointState.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
    }
    public subscript(key: String) -> Any? {
        switch key {
        case "modelCheckpointPath": return self.modelCheckpointPath
        case "allModelCheckpointPaths": return self.allModelCheckpointPaths
        default: return nil
        }
    }
}
extension Tensorflow.CheckpointState.Builder: GeneratedMessageBuilderProtocol {
    public subscript(key: String) -> Any? {
        get { 
            switch key {
            case "modelCheckpointPath": return self.modelCheckpointPath
            case "allModelCheckpointPaths": return self.allModelCheckpointPaths
            default: return nil
            }
        }
        set (newSubscriptValue) { 
            switch key {
            case "modelCheckpointPath":
                guard let newSubscriptValue = newSubscriptValue as? String else {
                    return
                }
                self.modelCheckpointPath = newSubscriptValue
            case "allModelCheckpointPaths":
                guard let newSubscriptValue = newSubscriptValue as? Array<String> else {
                    return
                }
                self.allModelCheckpointPaths = newSubscriptValue
            default: return
            }
        }
    }
}

// @@protoc_insertion_point(global_scope)
