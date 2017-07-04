#import "RNNSGif.h"
#import "NSGIF.h"

@implementation RNNSGif

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(convert:(NSString*)url
                  resolver:(RCTPromiseResolveBlock)resolve
                  rejecter:(RCTPromiseRejectBlock)reject )
{
    // convert NSString to NSUrl
    NSString *urlString = [NSString stringWithFormat:@"%@", url];
    NSURL *videoURL = [NSURL URLWithString:[urlString stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
    
    NSLog(@"About to convert video: %@", url);
    [NSGIF createGIFfromURL:videoURL withFrameCount:25 delayTime:.15 loopCount:0 completion:^(NSURL *GifURL) {
        NSLog(@"Finished generating GIF: %@", GifURL);
        resolve(GifURL.absoluteString);
    }];
    
}

@end

