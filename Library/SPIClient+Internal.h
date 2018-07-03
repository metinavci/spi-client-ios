//
//  SPIClient+Internal.h
//  SPIClient-iOS
//
//  Created by Mike Gouline on 28/6/18.
//  Copyright © 2018 Assembly Payments. All rights reserved.
//

#ifndef SPIClient_Internal_h
#define SPIClient_Internal_h

@interface SPIClient ()

- (BOOL)send:(SPIMessage *)message;

- (void)onSpiMessageReceived:(NSString *)message;

@end

#endif /* SPIClient_Internal_h */