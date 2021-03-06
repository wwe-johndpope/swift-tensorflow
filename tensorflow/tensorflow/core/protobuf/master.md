# Protocol Documentation
<a name="top"/>

## Table of Contents
* [master.proto](#master.proto)
 * [CloseSessionRequest](#tensorflow.CloseSessionRequest)
 * [CloseSessionResponse](#tensorflow.CloseSessionResponse)
 * [CreateSessionRequest](#tensorflow.CreateSessionRequest)
 * [CreateSessionResponse](#tensorflow.CreateSessionResponse)
 * [ExtendSessionRequest](#tensorflow.ExtendSessionRequest)
 * [ExtendSessionResponse](#tensorflow.ExtendSessionResponse)
 * [ListDevicesRequest](#tensorflow.ListDevicesRequest)
 * [ListDevicesResponse](#tensorflow.ListDevicesResponse)
 * [PartialRunSetupRequest](#tensorflow.PartialRunSetupRequest)
 * [PartialRunSetupResponse](#tensorflow.PartialRunSetupResponse)
 * [ResetRequest](#tensorflow.ResetRequest)
 * [ResetResponse](#tensorflow.ResetResponse)
 * [RunStepRequest](#tensorflow.RunStepRequest)
 * [RunStepResponse](#tensorflow.RunStepResponse)
* [Scalar Value Types](#scalar-value-types)

<a name="master.proto"/>
<p align="right"><a href="#top">Top</a></p>

## master.proto



<a name="tensorflow.CloseSessionRequest"/>
### CloseSessionRequest


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| session_handle | [string](#string) | optional |  |


<a name="tensorflow.CloseSessionResponse"/>
### CloseSessionResponse


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |


<a name="tensorflow.CreateSessionRequest"/>
### CreateSessionRequest


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| graph_def | [GraphDef](#tensorflow.GraphDef) | optional |  |
| config | [ConfigProto](#tensorflow.ConfigProto) | optional |  |


<a name="tensorflow.CreateSessionResponse"/>
### CreateSessionResponse


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| session_handle | [string](#string) | optional |  |
| graph_version | [int64](#int64) | optional |  |


<a name="tensorflow.ExtendSessionRequest"/>
### ExtendSessionRequest


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| session_handle | [string](#string) | optional |  |
| graph_def | [GraphDef](#tensorflow.GraphDef) | optional |  |
| current_graph_version | [int64](#int64) | optional |  |


<a name="tensorflow.ExtendSessionResponse"/>
### ExtendSessionResponse


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| new_graph_version | [int64](#int64) | optional |  |


<a name="tensorflow.ListDevicesRequest"/>
### ListDevicesRequest


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |


<a name="tensorflow.ListDevicesResponse"/>
### ListDevicesResponse


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| local_device | [DeviceAttributes](#tensorflow.DeviceAttributes) | repeated |  |
| remote_device | [DeviceAttributes](#tensorflow.DeviceAttributes) | repeated |  |


<a name="tensorflow.PartialRunSetupRequest"/>
### PartialRunSetupRequest


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| session_handle | [string](#string) | optional |  |
| feed | [string](#string) | repeated |  |
| fetch | [string](#string) | repeated |  |
| target | [string](#string) | repeated |  |


<a name="tensorflow.PartialRunSetupResponse"/>
### PartialRunSetupResponse


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| partial_run_handle | [string](#string) | optional |  |


<a name="tensorflow.ResetRequest"/>
### ResetRequest


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| container | [string](#string) | repeated |  |
| device_filters | [string](#string) | repeated |  |


<a name="tensorflow.ResetResponse"/>
### ResetResponse


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |


<a name="tensorflow.RunStepRequest"/>
### RunStepRequest


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| session_handle | [string](#string) | optional |  |
| feed | [NamedTensorProto](#tensorflow.NamedTensorProto) | repeated |  |
| fetch | [string](#string) | repeated |  |
| target | [string](#string) | repeated |  |
| options | [RunOptions](#tensorflow.RunOptions) | optional |  |
| partial_run_handle | [string](#string) | optional |  |


<a name="tensorflow.RunStepResponse"/>
### RunStepResponse


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| tensor | [NamedTensorProto](#tensorflow.NamedTensorProto) | repeated |  |
| metadata | [RunMetadata](#tensorflow.RunMetadata) | optional |  |







<a name="scalar-value-types"/>
## Scalar Value Types

| .proto Type | Notes | C++ Type | Java Type | Python Type |
| ----------- | ----- | -------- | --------- | ----------- |
| <a name="double"/> double |  | double | double | float |
| <a name="float"/> float |  | float | float | float |
| <a name="int32"/> int32 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint32 instead. | int32 | int | int |
| <a name="int64"/> int64 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint64 instead. | int64 | long | int/long |
| <a name="uint32"/> uint32 | Uses variable-length encoding. | uint32 | int | int/long |
| <a name="uint64"/> uint64 | Uses variable-length encoding. | uint64 | long | int/long |
| <a name="sint32"/> sint32 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int32s. | int32 | int | int |
| <a name="sint64"/> sint64 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int64s. | int64 | long | int/long |
| <a name="fixed32"/> fixed32 | Always four bytes. More efficient than uint32 if values are often greater than 2^28. | uint32 | int | int |
| <a name="fixed64"/> fixed64 | Always eight bytes. More efficient than uint64 if values are often greater than 2^56. | uint64 | long | int/long |
| <a name="sfixed32"/> sfixed32 | Always four bytes. | int32 | int | int |
| <a name="sfixed64"/> sfixed64 | Always eight bytes. | int64 | long | int/long |
| <a name="bool"/> bool |  | bool | boolean | boolean |
| <a name="string"/> string | A string must always contain UTF-8 encoded or 7-bit ASCII text. | string | String | str/unicode |
| <a name="bytes"/> bytes | May contain any arbitrary sequence of bytes. | string | ByteString | str |
