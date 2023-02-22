%hook UILabel

    - (void) setText:(NSString *)text
    {
        NSLog(@"DexcomTweak setText: %@", text);

        %orig;
    }
%end