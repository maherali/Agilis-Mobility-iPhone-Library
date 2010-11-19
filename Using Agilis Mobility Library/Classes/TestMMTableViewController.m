
#import "TestMMTableViewController.h"
#import "AMImageViewWrapper.h"
#import "AMTableCell.h"

@implementation TestModel

@synthesize aGivenRecord;

- (void) dealloc{
    self.aGivenRecord = nil;
    [super dealloc];
}


@end


@implementation TestMMTableViewController


- (id)init{
    if (self = [super initWithStyle:UITableViewStylePlain]) {
        TestModel *m1 = [[[TestModel alloc] init] autorelease];
        m1.aGivenRecord = [[[AMResourceRecord alloc] init] autorelease];
        m1.aGivenRecord.imageURLString = @"http://i2.cdn.turner.com/cnn/2010/WORLD/asiapcf/11/19/afghanistan.tanks/t1main.1029.tank.marines.jpg";
        TestModel *m2 = [[[TestModel alloc] init] autorelease];
        m2.aGivenRecord = [[[AMResourceRecord alloc] init] autorelease];
        m2.aGivenRecord.imageURLString = @"http://ecx.images-amazon.com/images/I/510W02ek7hL._BO2,204,203,200_PIsitb-sticker-arrow-click,TopRight,35,-76_AA240_SH20_OU01_.jpg";
      
        TestModel *m3 = [[[TestModel alloc] init] autorelease];
        m3.aGivenRecord = [[[AMResourceRecord alloc] init] autorelease];
        m3.aGivenRecord.imageURLString = @"http://i2.cdn.turner.com/cnn/2010/US/11/19/chile.miners/tzvids.minersinla.cnn.jpg";
        
        TestModel *m4 = [[[TestModel alloc] init] autorelease];
        m4.aGivenRecord = [[[AMResourceRecord alloc] init] autorelease];
        m4.aGivenRecord.imageURLString = @"http://i2.cdn.turner.com/cnn/2010/US/11/19/chile.miners/tzvids.minersinla.cnn.jpg";

        TestModel *m5 = [[[TestModel alloc] init] autorelease];
        m5.aGivenRecord = [[[AMResourceRecord alloc] init] autorelease];
        m5.aGivenRecord.imageURLString = @"http://i2.cdn.turner.com/cnn/2010/US/11/19/chile.miners/tzvids.minersinla.cnn.jpg";
        
        TestModel *m6 = [[[TestModel alloc] init] autorelease];
        m6.aGivenRecord = [[[AMResourceRecord alloc] init] autorelease];
        m6.aGivenRecord.imageURLString = @"http://i2.cdn.turner.com/cnn/2010/US/11/19/chile.miners/tzvids.minersinla.cnn.jpg";

        TestModel *m7 = [[[TestModel alloc] init] autorelease];
        m7.aGivenRecord = [[[AMResourceRecord alloc] init] autorelease];
        m7.aGivenRecord.imageURLString = @"http://i2.cdn.turner.com/cnn/2010/US/11/19/chile.miners/tzvids.minersinla.cnn.jpg";
        
        TestModel *m8 = [[[TestModel alloc] init] autorelease];
        m8.aGivenRecord = [[[AMResourceRecord alloc] init] autorelease];
        m8.aGivenRecord.imageURLString = @"http://i2.cdn.turner.com/cnn/2010/SHOWBIZ/celebrity.news.gossip/11/19/jennifer.aniston.ppl/tzvids.janiston.gi.jpg";

        
        self.data = [NSArray arrayWithObjects:m1, m2, m3, m4, m5, m6, m7, m8, nil];
        NSDictionary *ctx1 = [NSDictionary dictionaryWithObjectsAndKeys:@"aGivenRecord", @"rec", @"user.png", @"default", @"140", @"tag", nil];
        self.contexts = [NSDictionary dictionaryWithObjectsAndKeys:ctx1, @"AVATAR", nil];
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
        imgv.tag = 140;
    }
    imgv = (AMImageViewWrapper*)[cell.contentView viewWithTag:140];
    TestModel *model = [self.data objectAtIndex:indexPath.row];
    imgv.url = model.aGivenRecord.imageURLString;
    imgv.frame = CGRectMake(4, 5, 50, 50);

    [self configureCell:cell withIndexPath:indexPath];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 80;
}

- (void)dealloc {
    [super dealloc];
}


@end

