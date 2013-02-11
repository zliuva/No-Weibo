#import <Foundation/Foundation.h>

static NSString *settingsPlist = @"/Applications/Preferences.app/Settings.plist";

int main(int argc, char **argv) {
	NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithContentsOfFile:settingsPlist];
	NSMutableArray *items = dict[@"items"];

	for (NSDictionary *item in items) {
		if ([item[@"bundle"] isEqualToString:@"WeiboSettings"]) {
			[items removeObject:item];
			dict[@"items"] = items;
			[dict writeToFile:settingsPlist atomically:YES];

			NSLog(@"Weibo settings disabled");

			return 0;
		}
	}

	return 0;
}

// vim:ft=objc
