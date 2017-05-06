//
//  ViewController.m
//  Task1
//
//  Created by fpmi on 21.04.17.
//  Copyright (c) 2017 mashko. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *fileNameForSave;
@property (weak, nonatomic) IBOutlet UITextField *sizeStroke;
@property (weak, nonatomic) IBOutlet UITextField *color1;
@property (weak, nonatomic) IBOutlet UITextField *color2;
@property (weak, nonatomic) IBOutlet UIImageView *canvas;
@property (weak, nonatomic) IBOutlet UITextField *color3;
@property (weak, nonatomic) IBOutlet UITextField *color4;
@property CGPoint lastPoint;
@property float sizeStr;
@property float col1;
@property float col2;
@property float col3;
@property float col4;


@end

@implementation ViewController
- (IBAction)saveImg:(id)sender {
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *basePath = ([paths count] > 0) ? [paths objectAtIndex:0] : nil;
    
    UIImage *imageToSave = [[self canvas] image];
    NSData *binaryImageData = UIImagePNGRepresentation(imageToSave);
    
    [binaryImageData writeToFile:[basePath stringByAppendingPathComponent:[[self fileNameForSave] text]] atomically:YES];
}
- (IBAction)setUp:(id)sender {
    [self setSizeStr:[[[self sizeStroke] text] floatValue]];
    [self setCol1:[[[self color1] text] floatValue]];
    [self setCol2:[[[self color2] text] floatValue]];
    [self setCol3:[[[self color3] text] floatValue]];
    [self setCol4:[[[self color4] text] floatValue]];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    [self setLastPoint:[touch locationInView:self.canvas]];
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent*)event{
    UITouch *touch = [touches anyObject];
    CGPoint currentPoint = [touch locationInView:self.canvas];
    
    UIGraphicsBeginImageContext(self.canvas.frame.size);
    CGRect drawRect = CGRectMake(0.0f, 0.0f, self.canvas.frame.size.width, self.canvas.frame.size.height);
    [[[self canvas] image] drawInRect:drawRect];
    CGContextSetLineCap(UIGraphicsGetCurrentContext(), kCGLineCapRound); CGContextSetLineWidth(UIGraphicsGetCurrentContext(), [self sizeStr]);
    CGContextSetRGBStrokeColor(UIGraphicsGetCurrentContext(), [self col1], [self col2], [self col3], [self col4]); CGContextBeginPath(UIGraphicsGetCurrentContext()); CGContextMoveToPoint(UIGraphicsGetCurrentContext(), _lastPoint.x,                                                                                                                                                                                                                                                                                          _lastPoint.y);
    
    CGContextAddLineToPoint(UIGraphicsGetCurrentContext(), currentPoint.x, currentPoint.y);
    CGContextStrokePath(UIGraphicsGetCurrentContext());
    [[self canvas] setImage:UIGraphicsGetImageFromCurrentImageContext()]; UIGraphicsEndImageContext();
    _lastPoint = currentPoint;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
