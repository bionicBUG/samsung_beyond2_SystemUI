.class public Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;
.super Ljava/lang/Object;
.source "PathLineAnimationModelFactory.java"


# instance fields
.field animatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

.field defaultDelay:I

.field defaultDirection:I

.field defaultDuration:I

.field defaultInterpolator:Landroid/animation/TimeInterpolator;

.field defaultRepeatCount:I

.field defaultRepeatMode:I

.field defaultStartPoint:I

.field mDelay:[I

.field mDirection:[I

.field mDuration:[I

.field mInterpolator:[Landroid/animation/TimeInterpolator;

.field mRepeatCount:[I

.field mRepeatMode:[I

.field mStartPoint:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x12c

    .line 27
    iput v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->defaultDuration:I

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->defaultDelay:I

    const/4 v1, 0x1

    .line 29
    iput v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->defaultDirection:I

    .line 30
    iput v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->defaultStartPoint:I

    .line 31
    iput v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->defaultRepeatMode:I

    .line 32
    iput v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->defaultRepeatCount:I

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->defaultInterpolator:Landroid/animation/TimeInterpolator;

    .line 196
    new-instance v0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory$1;

    invoke-direct {v0, p0}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory$1;-><init>(Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;)V

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->animatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    return-void
.end method
