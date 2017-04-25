/// Generated by the Protocol Buffers 3.2.0 compiler.  DO NOT EDIT!
/// Protobuf-swift version: 3.0.13
/// Source file "versions.proto"
/// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct Tensorflow { }

public extension Tensorflow {
    public struct VersionsRoot {
        public static let `default` = VersionsRoot()
        public var extensionRegistry:ExtensionRegistry

        init() {
            extensionRegistry = ExtensionRegistry()
            registerAllExtensions(registry: extensionRegistry)
        }
        public func registerAllExtensions(registry: ExtensionRegistry) {
        }
    }

    /// Version information for a piece of serialized data
    /// There are different types of versions for each type of data
    /// (GraphDef, etc.), but they all have the same common shape
    /// described here.
    /// Each consumer has "consumer" and "min_producer" versions (specified
    /// elsewhere).  A consumer is allowed to consume this data if
    ///   producer >= min_producer
    ///   consumer >= min_consumer
    ///   consumer not in bad_consumers
    final public class VersionDef : GeneratedMessage {

        public static func == (lhs: Tensorflow.VersionDef, rhs: Tensorflow.VersionDef) -> Bool {
            if lhs === rhs {
                return true
            }
            var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
            fieldCheck = fieldCheck && (lhs.hasProducer == rhs.hasProducer) && (!lhs.hasProducer || lhs.producer == rhs.producer)
            fieldCheck = fieldCheck && (lhs.hasMinConsumer == rhs.hasMinConsumer) && (!lhs.hasMinConsumer || lhs.minConsumer == rhs.minConsumer)
            fieldCheck = fieldCheck && (lhs.badConsumers == rhs.badConsumers)
            fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
            return fieldCheck
        }

        /// The version of the code that produced this data.
        public fileprivate(set) var producer:Int32 = Int32(0)
        public fileprivate(set) var hasProducer:Bool = false

        /// Any consumer below this version is not allowed to consume this data.
        public fileprivate(set) var minConsumer:Int32 = Int32(0)
        public fileprivate(set) var hasMinConsumer:Bool = false

        /// Specific consumer versions which are disallowed (e.g. due to bugs).
        public fileprivate(set) var badConsumers:Array<Int32> = Array<Int32>()
        private var badConsumersMemoizedSerializedSize:Int32 = -1
        required public init() {
            super.init()
        }
        override public func isInitialized() -> Bool {
            return true
        }
        override public func writeTo(codedOutputStream: CodedOutputStream) throws {
            if hasProducer {
                try codedOutputStream.writeInt32(fieldNumber: 1, value:producer)
            }
            if hasMinConsumer {
                try codedOutputStream.writeInt32(fieldNumber: 2, value:minConsumer)
            }
            if !badConsumers.isEmpty {
                try codedOutputStream.writeRawVarint32(value: 26)
                try codedOutputStream.writeRawVarint32(value: badConsumersMemoizedSerializedSize)
                for oneValuebadConsumers in badConsumers {
                    try codedOutputStream.writeInt32NoTag(value: oneValuebadConsumers)
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
            if hasProducer {
                serialize_size += producer.computeInt32Size(fieldNumber: 1)
            }
            if hasMinConsumer {
                serialize_size += minConsumer.computeInt32Size(fieldNumber: 2)
            }
            var dataSizeBadConsumers:Int32 = 0
            for oneValuebadConsumers in badConsumers {
                dataSizeBadConsumers += oneValuebadConsumers.computeInt32SizeNoTag()
            }
            serialize_size += dataSizeBadConsumers
            if !badConsumers.isEmpty {
                serialize_size += 1
                serialize_size += dataSizeBadConsumers.computeInt32SizeNoTag()
            }
            badConsumersMemoizedSerializedSize = dataSizeBadConsumers
            serialize_size += unknownFields.serializedSize()
            memoizedSerializedSize = serialize_size
            return serialize_size
        }
        public class func getBuilder() -> Tensorflow.VersionDef.Builder {
            return Tensorflow.VersionDef.classBuilder() as! Tensorflow.VersionDef.Builder
        }
        public func getBuilder() -> Tensorflow.VersionDef.Builder {
            return classBuilder() as! Tensorflow.VersionDef.Builder
        }
        override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
            return Tensorflow.VersionDef.Builder()
        }
        override public func classBuilder() -> ProtocolBuffersMessageBuilder {
            return Tensorflow.VersionDef.Builder()
        }
        public func toBuilder() throws -> Tensorflow.VersionDef.Builder {
            return try Tensorflow.VersionDef.builderWithPrototype(prototype:self)
        }
        public class func builderWithPrototype(prototype:Tensorflow.VersionDef) throws -> Tensorflow.VersionDef.Builder {
            return try Tensorflow.VersionDef.Builder().mergeFrom(other:prototype)
        }
        override public func encode() throws -> Dictionary<String,Any> {
            guard isInitialized() else {
                throw ProtocolBuffersError.invalidProtocolBuffer("Uninitialized Message")
            }

            var jsonMap:Dictionary<String,Any> = Dictionary<String,Any>()
            if hasProducer {
                jsonMap["producer"] = Int(producer)
            }
            if hasMinConsumer {
                jsonMap["minConsumer"] = Int(minConsumer)
            }
            if !badConsumers.isEmpty {
                var jsonArrayBadConsumers:Array<Int> = []
                for oneValueBadConsumers in badConsumers {
                    jsonArrayBadConsumers.append(Int(oneValueBadConsumers))
                }
                jsonMap["badConsumers"] = jsonArrayBadConsumers
            }
            return jsonMap
        }
        override class public func decode(jsonMap:Dictionary<String,Any>) throws -> Tensorflow.VersionDef {
            return try Tensorflow.VersionDef.Builder.decodeToBuilder(jsonMap:jsonMap).build()
        }
        override class public func fromJSON(data:Data) throws -> Tensorflow.VersionDef {
            return try Tensorflow.VersionDef.Builder.fromJSONToBuilder(data:data).build()
        }
        override public func getDescription(indent:String) throws -> String {
            var output = ""
            if hasProducer {
                output += "\(indent) producer: \(producer) \n"
            }
            if hasMinConsumer {
                output += "\(indent) minConsumer: \(minConsumer) \n"
            }
            var badConsumersElementIndex:Int = 0
            for oneValueBadConsumers in badConsumers  {
                output += "\(indent) badConsumers[\(badConsumersElementIndex)]: \(oneValueBadConsumers)\n"
                badConsumersElementIndex += 1
            }
            output += unknownFields.getDescription(indent: indent)
            return output
        }
        override public var hashValue:Int {
            get {
                var hashCode:Int = 7
                if hasProducer {
                    hashCode = (hashCode &* 31) &+ producer.hashValue
                }
                if hasMinConsumer {
                    hashCode = (hashCode &* 31) &+ minConsumer.hashValue
                }
                for oneValueBadConsumers in badConsumers {
                    hashCode = (hashCode &* 31) &+ oneValueBadConsumers.hashValue
                }
                hashCode = (hashCode &* 31) &+  unknownFields.hashValue
                return hashCode
            }
        }


        //Meta information declaration start

        override public class func className() -> String {
            return "Tensorflow.VersionDef"
        }
        override public func className() -> String {
            return "Tensorflow.VersionDef"
        }
        //Meta information declaration end

        final public class Builder : GeneratedMessageBuilder {
            fileprivate var builderResult:Tensorflow.VersionDef = Tensorflow.VersionDef()
            public func getMessage() -> Tensorflow.VersionDef {
                return builderResult
            }

            required override public init () {
                super.init()
            }
            /// The version of the code that produced this data.
            public var producer:Int32 {
                get {
                    return builderResult.producer
                }
                set (value) {
                    builderResult.hasProducer = true
                    builderResult.producer = value
                }
            }
            public var hasProducer:Bool {
                get {
                    return builderResult.hasProducer
                }
            }
            @discardableResult
            public func setProducer(_ value:Int32) -> Tensorflow.VersionDef.Builder {
                self.producer = value
                return self
            }
            @discardableResult
            public func clearProducer() -> Tensorflow.VersionDef.Builder{
                builderResult.hasProducer = false
                builderResult.producer = Int32(0)
                return self
            }
            /// Any consumer below this version is not allowed to consume this data.
            public var minConsumer:Int32 {
                get {
                    return builderResult.minConsumer
                }
                set (value) {
                    builderResult.hasMinConsumer = true
                    builderResult.minConsumer = value
                }
            }
            public var hasMinConsumer:Bool {
                get {
                    return builderResult.hasMinConsumer
                }
            }
            @discardableResult
            public func setMinConsumer(_ value:Int32) -> Tensorflow.VersionDef.Builder {
                self.minConsumer = value
                return self
            }
            @discardableResult
            public func clearMinConsumer() -> Tensorflow.VersionDef.Builder{
                builderResult.hasMinConsumer = false
                builderResult.minConsumer = Int32(0)
                return self
            }
            /// Specific consumer versions which are disallowed (e.g. due to bugs).
            public var badConsumers:Array<Int32> {
                get {
                    return builderResult.badConsumers
                }
                set (array) {
                    builderResult.badConsumers = array
                }
            }
            @discardableResult
            public func setBadConsumers(_ value:Array<Int32>) -> Tensorflow.VersionDef.Builder {
                self.badConsumers = value
                return self
            }
            @discardableResult
            public func clearBadConsumers() -> Tensorflow.VersionDef.Builder {
                builderResult.badConsumers.removeAll(keepingCapacity: false)
                return self
            }
            override public var internalGetResult:GeneratedMessage {
                get {
                    return builderResult
                }
            }
            @discardableResult
            override public func clear() -> Tensorflow.VersionDef.Builder {
                builderResult = Tensorflow.VersionDef()
                return self
            }
            override public func clone() throws -> Tensorflow.VersionDef.Builder {
                return try Tensorflow.VersionDef.builderWithPrototype(prototype:builderResult)
            }
            override public func build() throws -> Tensorflow.VersionDef {
                try checkInitialized()
                return buildPartial()
            }
            public func buildPartial() -> Tensorflow.VersionDef {
                let returnMe:Tensorflow.VersionDef = builderResult
                return returnMe
            }
            @discardableResult
            public func mergeFrom(other:Tensorflow.VersionDef) throws -> Tensorflow.VersionDef.Builder {
                if other == Tensorflow.VersionDef() {
                    return self
                }
                if other.hasProducer {
                    producer = other.producer
                }
                if other.hasMinConsumer {
                    minConsumer = other.minConsumer
                }
                if !other.badConsumers.isEmpty {
                    builderResult.badConsumers += other.badConsumers
                }
                try merge(unknownField: other.unknownFields)
                return self
            }
            @discardableResult
            override public func mergeFrom(codedInputStream: CodedInputStream) throws -> Tensorflow.VersionDef.Builder {
                return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
            }
            @discardableResult
            override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Tensorflow.VersionDef.Builder {
                let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(copyFrom:self.unknownFields)
                while (true) {
                    let protobufTag = try codedInputStream.readTag()
                    switch protobufTag {
                    case 0: 
                        self.unknownFields = try unknownFieldsBuilder.build()
                        return self

                    case 8:
                        producer = try codedInputStream.readInt32()

                    case 16:
                        minConsumer = try codedInputStream.readInt32()

                    case 26:
                        let length = Int(try codedInputStream.readRawVarint32())
                        let limit = try codedInputStream.pushLimit(byteLimit: length)
                        while (codedInputStream.bytesUntilLimit() > 0) {
                            builderResult.badConsumers.append(try codedInputStream.readInt32())
                        }
                        codedInputStream.popLimit(oldLimit: limit)

                    default:
                        if (!(try parse(codedInputStream:codedInputStream, unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
                            unknownFields = try unknownFieldsBuilder.build()
                            return self
                        }
                    }
                }
            }
            class override public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> Tensorflow.VersionDef.Builder {
                let resultDecodedBuilder = Tensorflow.VersionDef.Builder()
                if let jsonValueProducer = jsonMap["producer"] as? Int {
                    resultDecodedBuilder.producer = Int32(jsonValueProducer)
                } else if let jsonValueProducer = jsonMap["producer"] as? String {
                    resultDecodedBuilder.producer = Int32(jsonValueProducer)!
                }
                if let jsonValueMinConsumer = jsonMap["minConsumer"] as? Int {
                    resultDecodedBuilder.minConsumer = Int32(jsonValueMinConsumer)
                } else if let jsonValueMinConsumer = jsonMap["minConsumer"] as? String {
                    resultDecodedBuilder.minConsumer = Int32(jsonValueMinConsumer)!
                }
                if let jsonValueBadConsumers = jsonMap["badConsumers"] as? Array<Int> {
                    var jsonArrayBadConsumers:Array<Int32> = []
                    for oneValueBadConsumers in jsonValueBadConsumers {
                        jsonArrayBadConsumers.append(Int32(oneValueBadConsumers))
                    }
                    resultDecodedBuilder.badConsumers = jsonArrayBadConsumers
                }
                return resultDecodedBuilder
            }
            override class public func fromJSONToBuilder(data:Data) throws -> Tensorflow.VersionDef.Builder {
                let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
                guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
                  throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
                }
                return try Tensorflow.VersionDef.Builder.decodeToBuilder(jsonMap:jsDataCast)
            }
        }

    }

}
extension Tensorflow.VersionDef: GeneratedMessageProtocol {
    public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<Tensorflow.VersionDef> {
        var mergedArray = Array<Tensorflow.VersionDef>()
        while let value = try parseDelimitedFrom(inputStream: inputStream) {
          mergedArray.append(value)
        }
        return mergedArray
    }
    public class func parseDelimitedFrom(inputStream: InputStream) throws -> Tensorflow.VersionDef? {
        return try Tensorflow.VersionDef.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
    }
    public class func parseFrom(data: Data) throws -> Tensorflow.VersionDef {
        return try Tensorflow.VersionDef.Builder().mergeFrom(data: data, extensionRegistry:Tensorflow.VersionsRoot.default.extensionRegistry).build()
    }
    public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> Tensorflow.VersionDef {
        return try Tensorflow.VersionDef.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(inputStream: InputStream) throws -> Tensorflow.VersionDef {
        return try Tensorflow.VersionDef.Builder().mergeFrom(inputStream: inputStream).build()
    }
    public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> Tensorflow.VersionDef {
        return try Tensorflow.VersionDef.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream) throws -> Tensorflow.VersionDef {
        return try Tensorflow.VersionDef.Builder().mergeFrom(codedInputStream: codedInputStream).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Tensorflow.VersionDef {
        return try Tensorflow.VersionDef.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
    }
    public subscript(key: String) -> Any? {
        switch key {
        case "producer": return self.producer
        case "minConsumer": return self.minConsumer
        case "badConsumers": return self.badConsumers
        default: return nil
        }
    }
}
extension Tensorflow.VersionDef.Builder: GeneratedMessageBuilderProtocol {
    public subscript(key: String) -> Any? {
        get { 
            switch key {
            case "producer": return self.producer
            case "minConsumer": return self.minConsumer
            case "badConsumers": return self.badConsumers
            default: return nil
            }
        }
        set (newSubscriptValue) { 
            switch key {
            case "producer":
                guard let newSubscriptValue = newSubscriptValue as? Int32 else {
                    return
                }
                self.producer = newSubscriptValue
            case "minConsumer":
                guard let newSubscriptValue = newSubscriptValue as? Int32 else {
                    return
                }
                self.minConsumer = newSubscriptValue
            case "badConsumers":
                guard let newSubscriptValue = newSubscriptValue as? Array<Int32> else {
                    return
                }
                self.badConsumers = newSubscriptValue
            default: return
            }
        }
    }
}

// @@protoc_insertion_point(global_scope)
