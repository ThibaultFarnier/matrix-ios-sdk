/*
 Copyright 2017 OpenMarket Ltd

 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

 http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 */

#import "MXMegolmSessionData.h"

@implementation MXMegolmSessionData

+ (id)modelFromJSON:(NSDictionary *)JSONDictionary
{
    MXMegolmSessionData *sessionData = [[MXMegolmSessionData alloc] init];
    if (sessionData)
    {
        MXJSONModelSetString(sessionData.senderKey, JSONDictionary[@"sender_key"]);
        MXJSONModelSetDictionary(sessionData.senderClaimedKeys, JSONDictionary[@"sender_claimed_keys"]);
        MXJSONModelSetString(sessionData.roomId, JSONDictionary[@"room_id"]);
        MXJSONModelSetString(sessionData.sessionId, JSONDictionary[@"session_id"]);
        MXJSONModelSetString(sessionData.sessionKey, JSONDictionary[@"session_key"]);
        MXJSONModelSetString(sessionData.algorithm, JSONDictionary[@"algorithm"]);
    }

    return sessionData;
}

- (NSDictionary *)JSONDictionary
{
    return @{
      @"sender_key": _senderKey,
      @"sender_claimed_keys": _senderClaimedKeys,
      @"room_id": _roomId,
      @"session_id": _sessionId,
      @"session_key":_sessionKey,
      @"algorithm": _algorithm
      };
}

@end
