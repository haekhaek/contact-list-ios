//
//  TableViewCell.m
//  Exercise 15 b
//
//  Created by Eugen Bopp on 19/12/2016.
//  Copyright © 2016 Eugen Bopp. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

//- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
//{
//    // ignore the style argument, use our own to override
//    self = [super initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:reuseIdentifier];
//    if (self) {
//        // If you need any further customization
//    }
//    return self;
//}
@end
