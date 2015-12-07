//
//  ClassUtils.m
//  Pods
//
//  Created by vlad gorbenko on 12/7/15.
//
//

#import "ClassUtils.h"

Class SBClassFromString(NSString *classString) {
    Class class = NSClassFromString(classString);
    if (class == nil) {
        NSString *appName = [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleExecutable"];
        classString = [NSString stringWithFormat:@"%@.%@", appName, classString];
        class = NSClassFromString(classString);
    }
    return class;
}