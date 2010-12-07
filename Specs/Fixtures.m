#import "Fixtures.h"
#import "Objection.h"

@implementation Engine
objection_register(Engine)
@synthesize awake;

- (void) awakeFromObjection {
	awake = YES;  
}
@end

@implementation Brakes

@end


@implementation Car
objection_register(Car)

@synthesize engine, brakes, awake;

- (void)awakeFromObjection {
  awake = YES;
}

objection_requires(@"engine", @"brakes")
@end

@implementation CarFactory
objection_register_singleton(CarFactory)
@end

@implementation CarManufacturer
@synthesize factory;
objection_register(CarManufacturer)
objection_requires(@"factory")
@end
