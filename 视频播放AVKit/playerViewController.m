//
//  playerViewController.m
//  视频播放AVKit
//
//  Created by 王奥东 on 16/7/16.
//  Copyright © 2016年 王奥东. All rights reserved.
//

#import "playerViewController.h"

#import <AVFoundation/AVFoundation.h>
#import <AVKit/AVKit.h>

@interface playerViewController ()<AVPlayerViewControllerDelegate>
@property(nonatomic,strong)AVAudioSession *audioSession;

@end

@implementation playerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.navigationController.toolbarHidden = YES;
    
    
    
    

    
    //设置播放源
    NSURL *url = [[NSBundle mainBundle]URLForResource:@"Alizee_La_Isla_Bonita副本.mp4" withExtension:nil];
    
    AVPlayer *player = [AVPlayer playerWithURL:url];
    
    self.player = player;
    //设置播放模式
    player.externalPlaybackVideoGravity = AVLayerVideoGravityResizeAspectFill;
    
    //不显示工具栏
    self.showsPlaybackControls = NO;
    

    //设置画中画代理对象
    self.delegate = self;
    
    [player play];
}


//画中画的代理方法

//视频将要播放
-(void)playerViewControllerWillStartPictureInPicture:(AVPlayerViewController *)playerViewController{
    
}

//已经播放
-(void)playerViewControllerDidStartPictureInPicture:(AVPlayerViewController *)playerViewController{
    
}

-(void)playerViewControllerWillStopPictureInPicture:(AVPlayerViewController *)playerViewController{
    
}


//已经结束
-(void)playerViewControllerDidStopPictureInPicture:(AVPlayerViewController *)playerViewController{
    

  
}


@end
