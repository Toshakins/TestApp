//
//  shotCell.m
//  TestApp
//
//  Created by Watta Puck on 10/17/13.
//  Copyright (c) 2013 Watta Puck. All rights reserved.
//

#import "shotCell.h"

@implementation shotCell

@synthesize cellButton;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        cellButton = [[UIButton alloc] init];
        [self.contentView addSubview:cellButton];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end