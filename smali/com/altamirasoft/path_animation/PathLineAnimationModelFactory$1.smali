.class Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory$1;
.super Ljava/lang/Object;
.source "PathLineAnimationModelFactory.java"

# interfaces
.implements Lcom/altamirasoft/path_animation/PathAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;


# direct methods
.method constructor <init>(Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDelay(I)J
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    iget-object v0, v0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->mDelay:[I

    if-eqz v0, :cond_0

    array-length v1, v0

    if-le v1, p1, :cond_0

    .line 220
    aget p0, v0, p1

    :goto_0
    int-to-long p0, p0

    return-wide p0

    .line 223
    :cond_0
    iget-object p0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    iget p0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->defaultDelay:I

    goto :goto_0
.end method

.method public getDirection(I)I
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    iget-object v0, v0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->mDirection:[I

    if-eqz v0, :cond_0

    array-length v1, v0

    if-le v1, p1, :cond_0

    .line 250
    aget p0, v0, p1

    return p0

    .line 253
    :cond_0
    iget-object p0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    iget p0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->defaultDirection:I

    return p0
.end method

.method public getDuration(I)J
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    iget-object v0, v0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->mDuration:[I

    if-eqz v0, :cond_0

    array-length v1, v0

    if-le v1, p1, :cond_0

    .line 210
    aget p0, v0, p1

    :goto_0
    int-to-long p0, p0

    return-wide p0

    .line 213
    :cond_0
    iget-object p0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    iget p0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->defaultDuration:I

    goto :goto_0
.end method

.method public getInterpolator(I)Landroid/animation/TimeInterpolator;
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    iget-object v0, v0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->mInterpolator:[Landroid/animation/TimeInterpolator;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-le v1, p1, :cond_0

    .line 200
    aget-object p0, v0, p1

    return-object p0

    .line 203
    :cond_0
    iget-object p0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    iget-object p0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->defaultInterpolator:Landroid/animation/TimeInterpolator;

    return-object p0
.end method

.method public getRepeatCount(I)I
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    iget-object v0, v0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->mRepeatCount:[I

    if-eqz v0, :cond_0

    array-length v1, v0

    if-le v1, p1, :cond_0

    .line 240
    aget p0, v0, p1

    return p0

    .line 243
    :cond_0
    iget-object p0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    iget p0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->defaultRepeatCount:I

    return p0
.end method

.method public getRepeatMode(I)I
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    iget-object v0, v0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->mRepeatMode:[I

    if-eqz v0, :cond_0

    array-length v1, v0

    if-le v1, p1, :cond_0

    .line 230
    aget p0, v0, p1

    return p0

    .line 233
    :cond_0
    iget-object p0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    iget p0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->defaultRepeatMode:I

    return p0
.end method

.method public getStartPoint(I)I
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    iget-object v0, v0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->mStartPoint:[I

    if-eqz v0, :cond_0

    array-length v1, v0

    if-le v1, p1, :cond_0

    .line 260
    aget p0, v0, p1

    return p0

    .line 263
    :cond_0
    iget-object p0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    iget p0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->defaultStartPoint:I

    return p0
.end method
