#import "DatosViewController.h"

@interface DatosViewController ()

@property (nonatomic, strong) NSDictionary *datos;
@property (nonatomic, strong) NSArray *datosCategoria;

@end

@implementation DatosViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.datos = @{
        @"Animales": @[
            @"Las tortugas respiran por su cloaca.",
            @"Los pulpos tienen tres corazones.",
            @"Los delfines duermen con un ojo abierto."
        ],
        @"Paises": @[
            @"México tiene 68 lenguas indígenas.",
            @"Japón tiene más de 6,800 islas.",
            @"Canadá tiene más lagos que todo el mundo."
        ],
        @"Ciencia": @[
            @"La luz tarda 8 minutos en llegar a la Tierra.",
            @"El agua puede hervir y congelarse al mismo tiempo.",
            @"El ADN humano es similar al del plátano."
        ]
    };
    
    self.datosCategoria = self.datos[self.categoria];
}

- (NSString *)obtenerDatoAleatorio {
    int index = arc4random_uniform((uint32_t)self.datosCategoria.count);
    return self.datosCategoria[index];
}

@end
