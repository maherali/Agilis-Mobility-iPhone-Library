#import "MyTableView.h"
#import "TestModel.h"

#define IMAGE_VIEW_TAG 140

@implementation MyTableView

- (id)initWithFrame:(CGRect)frame style:(UITableViewStyle)style andData:(NSArray*)data{
    if(self = [super initWithFrame:frame style:style andData:data]){
        NSDictionary *ctx1 = [NSDictionary dictionaryWithObjectsAndKeys:@"aGivenRecord", @"rec", @"TCPRO_tripIcons_speed.png", @"default", [NSString stringWithFormat:@"%d", IMAGE_VIEW_TAG], @"tag", nil];
        self.contexts = [NSDictionary dictionaryWithObjectsAndKeys:ctx1, @"ICONS", nil];
    }
    return self;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    AMTableCell *cell = (AMTableCell*) [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    AMImageViewWrapper *imgv;
    if (cell == nil) {
        cell = [[[AMTableCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
        imgv = [[[AMImageViewWrapper alloc] init] autorelease];
        [cell.contentView addSubview:imgv];
        imgv.tag = IMAGE_VIEW_TAG;
    }
    imgv = (AMImageViewWrapper*)[cell.contentView viewWithTag:IMAGE_VIEW_TAG];
    TestModel *model = [self.data objectAtIndex:indexPath.row];
    imgv.url = model.aGivenRecord.imageURLString;
    imgv.frame = CGRectMake(5, 5, 42, 42);
    
    [self configureCell:cell withIndexPath:indexPath];
    return cell;
}

@end
