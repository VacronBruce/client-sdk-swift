/*
 * Copyright 2023 LiveKit
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import Foundation

@_implementationOnly import WebRTC

extension RTCDataChannel {
    enum labels {
        static let reliable = "_reliable"
        static let lossy = "_lossy"
    }

    func toLKInfoType() -> Livekit_DataChannelInfo {
        Livekit_DataChannelInfo.with {
            $0.id = UInt32(max(0, channelId))
            $0.label = label
        }
    }
}
