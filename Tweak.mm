#import <Foundation/Foundation.h>
#import "Menu.h"

// Offset real da sua imagem (image_10.png)
#define OFFSET_AIMBOT 0x11ad820

static void carregarMenu(CFNotificationCenterRef center, void *observer, CFStringRef name, const void *object, CFDictionaryRef userInfo) {
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [VictorMenu abrirMenu];
    });
}

__attribute__((constructor)) static void iniciar() {
    CFNotificationCenterAddObserver(CFNotificationCenterGetLocalCenter(), NULL, &carregarMenu, (CFStringRef)UIApplicationDidFinishLaunchingNotification, NULL, CFNotificationSuspensionBehaviorDeliverImmediately);
}
