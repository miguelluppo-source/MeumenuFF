#import "Menu.h"

@implementation VictorMenu

+ (void)abrirMenu {
    VictorMenu *menu = [[VictorMenu alloc] initWithFrame:CGRectMake(50, 50, 200, 250)];
    menu.backgroundColor = [UIColor blackColor];
    menu.layer.cornerRadius = 15;
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(20, 100, 160, 40);
    [btn setTitle:@"AIMBOT" forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor redColor];
    [menu addSubview:btn];
    
    [[UIApplication sharedApplication].keyWindow addSubview:menu];
}
@end
