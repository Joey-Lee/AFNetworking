//
//  DownloadViewController.m
//  AFNetworking Example
//
//  Created by lijia on 16/1/27.
//
//

#import "DownloadViewController.h"
#import "DownloadTableViewCell.h"
#import "EntryModel.h"

@interface DownloadViewController () <UITableViewDataSource, UITableViewDelegate> {
    NSArray *_downloadArray;
}

@property (nonatomic, weak) UITableView *tableView;

@end

@implementation DownloadViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.tableView registerNib:[UINib nibWithNibName:@"DownloadTableViewCell" bundle:nil] forCellReuseIdentifier:@"cell"];
    
}

- (void)loadData {
    EntryModel *model1 = [EntryModel new];
    model1.title = @"Xcode 4.6.3";
    model1.urlStr = @"https://developer.apple.com/devcenter/download.action?path=/Developer_Tools/xcode_4.6.3/xcode4630916281a.dmg";
    
    EntryModel *model2 = [EntryModel new];
    model2.title = @"Xcode 5.1.1";
    model2.urlStr = @"https://developer.apple.com/devcenter/download.action?path=/Developer_Tools/xcode_5.1.1/xcode_5.1.1.dmg";
    
    _downloadArray = [[NSArray alloc] initWithObjects:model1, model2, nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    
    DownloadTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (!cell) {
        cell = [[DownloadTableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    cell.model = _downloadArray[indexPath.row];
    
    return cell;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/



@end
