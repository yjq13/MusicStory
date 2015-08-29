//
//  TaskSwitcherViewController.m
//  LTInfiniteScrollView
//
//  Created by ltebean on 15/8/7.
//  Copyright (c) 2015年 ltebean. All rights reserved.
//

#import "TaskSwitcherViewController.h"
#import "LTInfiniteScrollView.h"
#import "musicStory-swift.h"

#define SCREEN_WIDTH ceil([UIScreen mainScreen].bounds.size.width/10)*10
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height
#define NUMBER_OF_VISIBLE_VIEWS 5
#define numberOfShowView 10

@interface TaskSwitcherViewController ()<LTInfiniteScrollViewDelegate,LTInfiniteScrollViewDataSource>
@property (weak, nonatomic) IBOutlet UITableViewCell *speedChooseView;
@property (weak, nonatomic) IBOutlet UIButton *startButton;
@property (weak, nonatomic) IBOutlet UIButton *backButton;
@property (weak, nonatomic) IBOutlet UIPickerView *levelChooseView;
@property (strong, nonatomic) LTInfiniteScrollView *scrollView;
@property (nonatomic) int count;
@property (nonatomic) int index;
@property (nonatomic) double *ewr;

@end

@implementation TaskSwitcherViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view.
    self.scrollView = [[LTInfiniteScrollView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
    [self.view addSubview:self.scrollView];
    _count=0;
    _index=0;
    self.scrollView.dataSource = self;
    self.scrollView.delegate = self;
    self.scrollView.maxScrollDistance = 3;
    [self.scrollView addSubview:_startButton];
    [self.scrollView addSubview:_speedChooseView];
    [self.scrollView addSubview:_backButton];
    _speedChooseView.hidden=true;
}

- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    [self.scrollView reloadData];
}

# pragma mark - LTInfiniteScrollView dataSource
- (NSInteger)numberOfViews
{
    return 999;
}
-(NSInteger)numberOfShowViews{
    return numberOfShowView;
}
- (NSInteger)numberOfVisibleViews
{
    return NUMBER_OF_VISIBLE_VIEWS;
}

# pragma mark - LTInfiniteScrollView delegate
- (UIView *)viewAtIndex:(NSInteger)index reusingView:(UIView *)view;
{
    if (!view) {
        view = [self newCard:index];
    }
    return view;
}

- (UIView *)newCard:(NSInteger)index
{
    CGFloat width =  SCREEN_WIDTH / 10 * 7.2;
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, width, 300)];
    
    
    UIView *icon = [[UIView alloc] initWithFrame:CGRectMake(140, 10, 140, 40)];
    icon.backgroundColor = [UIColor blueColor];
    icon.layer.cornerRadius = 5;
    
    UIView *snapshot = [[UIView alloc] initWithFrame:CGRectMake(0, 60, width, 180)];
    snapshot.backgroundColor = [UIColor whiteColor];
    snapshot.layer.cornerRadius = 5;
    
    index=index + numberOfShowView / 2 - 1 + numberOfShowView % 2;
    NSString *imageID=@"0";
    imageID=[imageID stringByAppendingString:[NSString stringWithFormat:@"%ld",(long)index]];
    imageID=[imageID stringByAppendingString:@".jpg"];
    
    
    UIImageView *musicImageView=[[UIImageView alloc]initWithFrame:CGRectMake(40, 40, 100, 100)];
    UIImage *musicImage=[UIImage imageNamed:imageID];
    
    musicImageView.image=musicImage;
    
    [snapshot addSubview:musicImageView];
    
    
    UIBezierPath *shadowPath = [UIBezierPath bezierPathWithRect:snapshot.bounds];
    snapshot.layer.shadowColor = [UIColor blackColor].CGColor;
    snapshot.layer.shadowOffset = CGSizeMake(2.0f, 2.0f);
    snapshot.layer.shadowOpacity = 0.3;
    snapshot.layer.shadowPath = shadowPath.CGPath;
    
    
    
    [view addSubview:icon];
    [view addSubview:snapshot];
    return view;
}

- (void)updateView:(UIView *)view withProgress:(CGFloat)progress scrollDirection:(ScrollDirection)direction
{
    
    // adjust z-index of each views
    NSMutableArray *views = [[self.scrollView allViews] mutableCopy];
    [views sortUsingComparator:^NSComparisonResult(UIView *view1, UIView *view2) {
        return view1.tag > view2.tag;
    }];
    for (UIView *view in views) {
        [view.superview bringSubviewToFront:view];
    }
    
    // alpha
    CGFloat alpha = 1;
    if (progress >= 0) {
        alpha = 1;
    } else {
        alpha = 1 - fabs(progress) * 0.2;
    }
    view.alpha = alpha;
    
    
    CGAffineTransform transform = CGAffineTransformIdentity;
    
    // scale
    CGFloat scale = 1 + (progress) * 0.03;
    transform = CGAffineTransformScale(transform, scale, scale);

    // translation
    CGFloat translation = 0;
    if (progress > 0) {
         translation = fabs(progress) * SCREEN_WIDTH / 2.2;
    } else {
         translation = fabs(progress) * SCREEN_WIDTH / 15;
    }
    
    transform = CGAffineTransformTranslate(transform, translation, 0);
    view.transform = transform;
    //NSLog(@"%f",progress);
    if(self.count == numberOfShowView){
        _count=0;
    }
    float i=progress;
    if(i<=0){
        i = i + numberOfShowView;
    }
    i = numberOfShowView-i;
    double t=i-(int)i;
    if(t==0||i==0){
        if(_count == 0){
            _index = (int)i;

            NSLog(@"%d\n",_index);
            
            
        }
    }else{
       
    }
    _count++;

    
}
- (IBAction)start:(UIButton *)sender {
    _speedChooseView.hidden=false;
    [Constant setLAST_VIEW_IDENTIFY:@"switch"];
}
- (IBAction)closeChooseSpeedView:(UIButton *)sender {
    _speedChooseView.hidden=true;
}
- (IBAction)chooseSpeed1:(UIButton *)sender {
    [Constant setSPEED:2];
    //下面的方法是代码跳转界面
    UIStoryboard *myBoard = self.storyboard;
    UIViewController *anotherView=[myBoard instantiateViewControllerWithIdentifier:@"game"];
    //self.presentViewController(anotherView, animated: true, completion: nil)
    [self presentViewController:anotherView animated:true completion:nil];
}
- (IBAction)chooseSpeed2:(UIButton *)sender {
    [Constant setSPEED:1.5];
    //下面的方法是代码跳转界面
    UIStoryboard *myBoard = self.storyboard;
    UIViewController *anotherView=[myBoard instantiateViewControllerWithIdentifier:@"game"];
    //self.presentViewController(anotherView, animated: true, completion: nil)
    [self presentViewController:anotherView animated:true completion:nil];
}
- (IBAction)chooseSpeed3:(UIButton *)sender {
    [Constant setSPEED:1];
    //下面的方法是代码跳转界面
    UIStoryboard *myBoard = self.storyboard;
    UIViewController *anotherView=[myBoard instantiateViewControllerWithIdentifier:@"game"];
    //self.presentViewController(anotherView, animated: true, completion: nil)
    [self presentViewController:anotherView animated:true completion:nil];
}

@end
