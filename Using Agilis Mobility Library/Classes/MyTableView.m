#import "MyTableView.h"
#import "TestModel.h"

#define IMAGE_VIEW_TAG 140
#define LABEL_VIEW_TAG 141

@implementation MyTableView

- (id)initWithFrame:(CGRect)frame style:(UITableViewStyle)style andData:(NSArray*)data{
     [AMTableView setCacheLocation:@"Documents/mycache"]; // optional, the default location for the image cache is Documents/cache
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
    UILabel *lbl;
    if (cell == nil) {
        cell = [[[AMTableCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
        imgv = [[[AMImageViewWrapper alloc] init] autorelease];
        [cell.contentView addSubview:imgv];
        imgv.tag = IMAGE_VIEW_TAG;
        lbl = [[[UILabel alloc] initWithFrame:CGRectMake(80, 10, 200, 30)] autorelease];
        lbl.font = [UIFont boldSystemFontOfSize:15];
        [cell.contentView addSubview:lbl];
        lbl.tag = LABEL_VIEW_TAG;
    }
    imgv = (AMImageViewWrapper*)[cell.contentView viewWithTag:IMAGE_VIEW_TAG];
    lbl = (UILabel*) [cell.contentView viewWithTag:LABEL_VIEW_TAG];
    TestModel *model = [self.data objectAtIndex:indexPath.row];
    imgv.url = model.aGivenRecord.imageURLString;
    imgv.frame = CGRectMake(5, 5, 42, 42);
    lbl.text = model.aText;
    [self configureCell:cell withIndexPath:indexPath];
    return cell;
}

@end
