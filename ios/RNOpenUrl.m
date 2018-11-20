#if __has_include(<React/RCTUtils.h>)
#import <React/RCTUtils.h>
#else
#import "RCTUtils.h"
#endif
#import "RNOpenUrl.h"
#import <SafariServices/SafariServices.h>

@interface RNOpenUrl () <SFSafariViewControllerDelegate>

@property (nonatomic) RCTPromiseRejectBlock rejectBlock;
@property (nonatomic) RCTPromiseResolveBlock resolveBlock;

@end

@implementation RNOpenUrl

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(openURL:(NSString *)urlString
                  resolve:(RCTPromiseResolveBlock)resolve
                  reject:(RCTPromiseRejectBlock)reject)
{
	NSURL *url = [NSURL URLWithString:urlString];
	self.resolveBlock = resolve;
	self.rejectBlock = reject;
	
	SFSafariViewController *safariController = [[SFSafariViewController alloc] initWithURL:url entersReaderIfAvailable:false];
	safariController.delegate = self;
	
	[RCTSharedApplication().delegate.window.rootViewController presentViewController:safariController animated:true completion:^{
		
	}];
}

#pragma mark - SFSafariViewController delegate methods

- (void)safariViewController:(SFSafariViewController *)controller didCompleteInitialLoad:(BOOL)didLoadSuccessfully {
	if (self.resolveBlock) {
		self.resolveBlock(@(didLoadSuccessfully));
	}
}

- (void)safariViewControllerDidFinish:(SFSafariViewController *)controller {
	
}

@end
  
