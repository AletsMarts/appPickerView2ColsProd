//
//  ViewController.h
//  appPickerView2ColsProd
//
//  Created by Alondra Morales de la Cruz on 22/10/24.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>

@property (weak, nonatomic) IBOutlet UILabel *label1;

@property (weak, nonatomic) IBOutlet UIImageView *imageView1;

@property (weak, nonatomic) IBOutlet UIPickerView *pickerView1;

@end
