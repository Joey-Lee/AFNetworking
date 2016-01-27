//
//  MoreExamples.m
//  AFNetworking Example
//
//  Created by lijia on 16/1/27.
//
//

#import "MoreExamples.h"
#import "DownloadViewController.h"
#import "UploadViewController.h"
#import "GetViewController.h"
#import "PostViewController.h"

@implementation MoreExamples


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *title = nil;
    switch (indexPath.row) {
        case 0:
            title = @"1. 文件下载示例";
            break;
        case 1:
            title = @"2. 文件上传示例";
            break;
        case 2:
            title = @"3. GET请求示例";
            break;
        case 3:
            title = @"4. POST请求示例";
            break;
//        case 4:
//            title = @"5. PUT请求示例";
//            break;
            
        default:
            break;
    }
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    cell.textLabel.text = title;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    id exampleVC = nil;
    switch (indexPath.row) {
        case 0:
            exampleVC = [storyboard instantiateViewControllerWithIdentifier:@"downloadVC"];
            break;
        case 1:
            exampleVC = [storyboard instantiateViewControllerWithIdentifier:@"uploadVC"];
            break;
        case 2:
            exampleVC = [storyboard instantiateViewControllerWithIdentifier:@"getVC"];
            break;
        case 3:
            exampleVC = [storyboard instantiateViewControllerWithIdentifier:@"postVC"];
            break;
//        case 4:
//            exampleVC = [storyboard instantiateViewControllerWithIdentifier:@"downloadVC"];
//            break;
            
        default:
            break;
    }
    [self.navigationController pushViewController:exampleVC animated:YES];
}
@end
