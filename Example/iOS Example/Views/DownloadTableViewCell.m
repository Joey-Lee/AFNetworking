//
//  DownloadTableViewCell.m
//  AFNetworking Example
//
//  Created by Joey on 16/1/27.
//
//

#import "DownloadTableViewCell.h"

@interface DownloadTableViewCell()

@property (nonatomic, weak)IBOutlet UILabel *titleLabel;
@property (nonatomic, weak)IBOutlet UIButton *downloadBtn;

@end

@implementation DownloadTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setModel:(EntryModel *)model {
    _model = model;
    self.titleLabel.text = _model.title;
}

@end
