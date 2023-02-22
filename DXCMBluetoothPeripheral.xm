@import CoreBluetooth;

%hook DXCMBluetoothPeripheral
- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(CBCharacteristic *)characteristic error:(id)error {

    if( characteristic.value != nil) {

        NSData *data = characteristic.value;

        NSLog(@"DexcomTweak didUpdateValueForCharacteristic: %@ data: %@", characteristic.UUID.UUIDString, [data description]);

    }

	%orig;
}
%end