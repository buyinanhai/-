//
//  ViewController.m
//  网络音频的同步合成
//
//  Created by 布依男孩 on 15/8/3.
//  Copyright (c) 2015年 汪宁. All rights reserved.
//

#import "ViewController.h"
#import "WNAudioComposition.h"
@interface ViewController ()
@property(nonatomic, strong) AVAudioPlayer *player;

@end

@implementation ViewController
- (void)viewDidLoad{
    [super viewDidLoad];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{

    //合成的音频的路径
    NSString *audioPath = [[WNAudioComposition alloc] exportAudioWithURL:@"http://127.0.0.1/shilianle.mp3" otherAssetURL:@"http://127.0.0.1/youloveme.mp3" saveFileName:@"comMusic"];
    NSLog(@"音频的路径:%@",audioPath);
    
    //合成视频与音频的路径
   NSString *videoPath = [[WNAudioComposition alloc] exprotVideoWithAudio:@"http://127.0.0.1/03.mp4" secondAsset:@"http://127.0.0.1/shilianle.mp3" saveFileName:@"myVideo"];
    NSLog(@"视频的的路径:%@",videoPath);

}
@end
