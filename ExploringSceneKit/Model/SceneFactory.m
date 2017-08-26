//
//  SceneFactory.m
//  ChicioSceneKit
//
//  Created by Fabrizio Duroni on 26/09/15.
//

#import "Scene.h"
#import "SceneBalls_old.h"
#import "SceneCollada.h"
#import "ExploringSceneKit-Swift.h"
#import "SceneFactory.h"

@implementation SceneFactory

- (SCNScene<Scene> *)makeScene:(NSInteger)sceneId {
    
    switch (sceneId) {
        case 0:
            return [[SceneBalls_old alloc]init];
        case 1:
            return [[SceneCollada alloc]init];
        case 2:
            return [[PhysicallyBasedScene alloc] init];
        default:
            return [[SceneBalls_old alloc]init];
    }
}

@end
