//
//  DownloadTableViewCell.h
//  AFNetworking Example
//
//  Created by Joey on 16/1/27.
//
//

#import <UIKit/UIKit.h>
#import "EntryModel.h"
#import "DownloadViewController.h"

@interface DownloadTableViewCell : UITableViewCell

@property (nonatomic, strong) EntryModel *model;
@property (nonatomic, assign) DownloadViewController *target;
@property (nonatomic, weak)IBOutlet UIProgressView *progressView;

@end
