%hook SpringBoard
- (void)applicationDidFinishLaunching:(id)application
{
    %orig;

	UIViewController *view = [UIApplication sharedApplication].keyWindow.rootViewController;
	while (view.presentedViewController != nil && !view.presentedViewController.isBeingDismissed)
	{
		view = view.presentedViewController;
	}

	UIAlertController *alertController =
		[UIAlertController alertControllerWithTitle:@"Respring Complete"
		message:@"Shane's first tweak."
		preferredStyle:UIAlertControllerStyleAlert];

	[alertController addAction:[UIAlertAction actionWithTitle:@"Continue"
	style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){ }]];

    [view presentViewController:alertController animated:YES completion:nil];

}

%end
