//
//  ViewController.m
//  appPickerView2ColsProd
//
//  Created by Alondra Morales de la Cruz on 22/10/24.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSArray *productos;
    NSArray *colores;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    productos = @[@"Pantalla LCD", @"iPad",@"Bicicleta",@"Motocicleta",@"Carro",@"Camioneta"];
    
    colores = @[@"Rojo 🦞", @"Verde 🐊", @"Azul 🐟", @"Gris 🐘", @"Naranja 🐅", @"Aleatorio 🏳️‍🌈"];
    
    _pickerView1.delegate = self;
    _pickerView1.dataSource = self;
    
    _label1.text = [NSString stringWithFormat:@"%@, %@", 
        [productos objectAtIndex:0],
        [colores objectAtIndex:0]];
    
    UIColor *color =[UIColor colorWithRed:0 green:155 blue:100 alpha:1.0];
    
    _imageView1.image = [UIImage imageNamed:@"PantallaLCD"];
    
    self.view.backgroundColor = color;
    
    NSLog(@"%@", _label1.text);
    
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 2;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    if (component == 0) {
        return productos.count;
    } else {
        return colores.count;
    }
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    if (component == 0) {
        return [productos objectAtIndex:row];
    } else {
        return colores[row];
    }
    return nil;
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    _label1.text = [NSString stringWithFormat:@"%@, %@", [productos objectAtIndex:[_pickerView1 selectedRowInComponent:0]], [colores objectAtIndex:[_pickerView1 selectedRowInComponent:1]]];
    
    unsigned long int color = [colores indexOfObject:[colores objectAtIndex:[_pickerView1 selectedRowInComponent:1]]];
    
    
    switch (color) {
        case 0:
            self.imageView1.backgroundColor = [UIColor redColor];
            break;
        case 1:
            self.imageView1.backgroundColor = [UIColor greenColor];
            break;
        case 2:
            self.imageView1.backgroundColor = [UIColor blueColor];
            break;
        case 3:
            self.imageView1.backgroundColor = [UIColor grayColor];
            break;
        case 4:
            self.imageView1.backgroundColor = [UIColor orangeColor];
            break;
        case 5:
            srand((unsigned)time(NULL));
            UIColor *colorAleatorio = [UIColor colorWithRed:(rand()%255/255.) 
                                                      green:(rand()%255/255.)
                                                       blue:(rand()%255/255.) alpha:1.0];
            
            self.imageView1.backgroundColor = colorAleatorio;
            break;
            
    }
    
    unsigned long int producto = [productos indexOfObject:[productos objectAtIndex:[_pickerView1 selectedRowInComponent:0]]];
    
    
    switch (producto) {
        case 0:
            self.imageView1.image = [UIImage imageNamed:@"PantallaLCD"];
            break;
        case 1:
            self.imageView1.image = [UIImage imageNamed:@"ipad"];
            break;
        case 2:
            self.imageView1.image = [UIImage imageNamed:@"BICI_2"];
            break;
        case 3:
            self.imageView1.image = [UIImage imageNamed:@"moto1"];
            break;
        case 4:
            self.imageView1.image = [UIImage imageNamed:@"carro1"];
            break;
        case 5:
            self.imageView1.image = [UIImage imageNamed:@"camioneta1"];
            break;
            
            
    }
    
}
@end
