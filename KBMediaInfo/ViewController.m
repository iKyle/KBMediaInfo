//
//  ViewController.m
//  KBMediaInfo
//
//  Created by Xin on 2019/2/17.
//  Copyright © 2019 Xin. All rights reserved.
//

#import "ViewController.h"
#import "Document.h"

#pragma mark - ViewController private

@interface ViewController ()

@property (assign) IBOutlet NSTextView *infoTextView;

@end

#pragma mark - ViewController implementation

@implementation ViewController

-(void) viewWillAppear {
    NSDocumentController *dc = [NSDocumentController sharedDocumentController];
    self.representedObject = [dc documentForWindow:[[self view] window]];
}

#pragma mark Actions

- (IBAction)showMovie:(id)sender {
    [(Document *)self.representedObject openMovieFile];
}


@end
