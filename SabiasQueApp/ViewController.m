#import "ViewController.h"
#import "DatosViewController.h"

@implementation ViewController

- (void)seleccionarCategoria:(NSString *)categoria {
    self.categoriaSeleccionada = categoria;
    
    DatosViewController *vc = [[DatosViewController alloc] init];
    vc.categoria = categoria;
    
    [self.navigationController pushViewController:vc animated:YES];
}

@end
