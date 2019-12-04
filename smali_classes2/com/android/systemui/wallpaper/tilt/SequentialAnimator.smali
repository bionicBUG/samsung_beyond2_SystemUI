.class public Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;
.super Ljava/lang/Object;
.source "SequentialAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;,
        Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimationState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SequentialAnimator"


# instance fields
.field private mAnimationState:I

.field private mAnimationValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mChoreographer:Landroid/view/Choreographer;

.field private mCurrentFraction:F

.field private mDummyAnimator:Landroid/animation/ValueAnimator;

.field private mDuration:J

.field private mFractionUnit:F

.field private final mFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field private mFrameCount:J

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mIsCanceled:Z

.field private mIsRunning:Z

.field private mPrevFrameTime:J

.field private mStartDelay:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mChoreographer:Landroid/view/Choreographer;

    .line 29
    new-instance v0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$1;-><init>(Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 60
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mDummyAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mIsRunning:Z

    .line 65
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mIsCanceled:Z

    const-wide/16 v0, -0x1

    .line 66
    iput-wide v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mPrevFrameTime:J

    const/high16 v0, 0x41f80000    # 31.0f

    .line 67
    iput v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mFractionUnit:F

    const/4 v0, -0x1

    .line 69
    iput v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mAnimationState:I

    const/4 v0, 0x0

    .line 70
    iput v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mCurrentFraction:F

    const-wide/16 v0, 0x1f4

    .line 71
    iput-wide v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mDuration:J

    const-wide/16 v0, 0x0

    .line 72
    iput-wide v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mStartDelay:J

    .line 74
    iput-wide v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mFrameCount:J

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mAnimationValues:Ljava/util/ArrayList;

    .line 79
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 80
    sget-object v0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->TAG:Ljava/lang/String;

    const-string v1, "SequentialAnimator: prepare looper for Choreographer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 82
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 84
    :cond_0
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mChoreographer:Landroid/view/Choreographer;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mIsRunning:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;)F
    .locals 0

    .line 20
    iget p0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mCurrentFraction:F

    return p0
.end method

.method static synthetic access$116(Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;F)F
    .locals 1

    .line 20
    iget v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mCurrentFraction:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mCurrentFraction:F

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;)F
    .locals 0

    .line 20
    iget p0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mFractionUnit:F

    return p0
.end method

.method static synthetic access$300(Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;)Landroid/view/Choreographer;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mChoreographer:Landroid/view/Choreographer;

    return-object p0
.end method


# virtual methods
.method public addAnimationValue(Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;)Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mAnimationValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public cancel()V
    .locals 3

    .line 176
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mIsRunning:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 177
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mIsRunning:Z

    const/4 v0, 0x1

    .line 178
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mIsCanceled:Z

    .line 179
    iget-object v1, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mChoreographer:Landroid/view/Choreographer;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v1, v2}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    const/4 v1, 0x2

    .line 180
    iput v1, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mAnimationState:I

    .line 181
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->getCurrentFraction()F

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->notifyListener(IF)V

    .line 182
    iput v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mAnimationState:I

    .line 183
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->getCurrentFraction()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->notifyListener(IF)V

    :cond_0
    return-void
.end method

.method public getCurrentFraction()F
    .locals 0

    .line 200
    iget p0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mCurrentFraction:F

    return p0
.end method

.method public isRunning()Z
    .locals 0

    .line 188
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mIsRunning:Z

    return p0
.end method

.method notifyListener(IF)V
    .locals 7

    .line 246
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mDummyAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    .line 248
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    .line 250
    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 252
    iget-object p2, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mDummyAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p2

    .line 253
    iget-object v2, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mAnimationValues:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 255
    iget-object v4, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mAnimationValues:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    invoke-virtual {v4, p2}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->calculateValue(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_5

    .line 258
    iget-object p0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mDummyAnimator:Landroid/animation/ValueAnimator;

    invoke-interface {p1, p0}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    goto :goto_1

    .line 261
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 262
    sget-object v3, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyListener: #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mFrameCount:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " fraction"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mCurrentFraction:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " unit:"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mFractionUnit:F

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_5

    if-eqz p1, :cond_4

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    goto :goto_1

    .line 269
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mDummyAnimator:Landroid/animation/ValueAnimator;

    invoke-interface {v2, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    goto :goto_1

    .line 272
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mDummyAnimator:Landroid/animation/ValueAnimator;

    invoke-interface {v2, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_1

    .line 266
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mDummyAnimator:Landroid/animation/ValueAnimator;

    invoke-interface {v2, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 278
    :cond_5
    :goto_1
    sget-object p0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    sub-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p0

    const-wide/16 v0, 0x40

    cmp-long p2, p0, v0

    if-lez p2, :cond_6

    .line 280
    sget-object p2, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyListener : took :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method

.method public setCurrentFraction(F)V
    .locals 0

    .line 196
    iput p1, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mCurrentFraction:F

    return-void
.end method

.method public setDuration(J)V
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 109
    sget-object v2, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setStartDelay: under 0 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide p1, v0

    .line 112
    :cond_0
    iput-wide p1, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mDuration:J

    .line 113
    iget-object p0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mDummyAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 135
    iget-object p0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mDummyAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public setListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method public setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-void
.end method

.method public declared-synchronized start()V
    .locals 9

    monitor-enter p0

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    if-nez v0, :cond_0

    .line 140
    sget-object v0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->TAG:Ljava/lang/String;

    const-string v1, "start: no listeners"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    monitor-exit p0

    return-void

    .line 144
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mIsRunning:Z

    if-eqz v0, :cond_1

    .line 145
    sget-object v0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->TAG:Ljava/lang/String;

    const-string v1, "start: skipped, already Running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    monitor-exit p0

    return-void

    :cond_1
    const-wide/16 v0, -0x1

    .line 149
    :try_start_2
    iput-wide v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mPrevFrameTime:J

    .line 150
    iget-wide v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mDuration:J

    long-to-float v0, v0

    const/high16 v1, 0x41800000    # 16.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    iput v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mFractionUnit:F

    const/4 v0, 0x1

    .line 151
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mIsRunning:Z

    const/4 v2, 0x0

    .line 152
    iput-boolean v2, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mIsCanceled:Z

    const/4 v3, 0x0

    .line 153
    iput v3, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mCurrentFraction:F

    const-wide/16 v3, 0x0

    .line 154
    iput-wide v3, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mFrameCount:J

    .line 155
    sget-object v5, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "start: duration: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mDuration:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " startDelay: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mStartDelay:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " mFractionUnit:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mFractionUnit:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " frameDelay:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v7, 0x10

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v5, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    instance-of v5, v5, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;

    if-eqz v5, :cond_2

    .line 157
    iget-object v5, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    check-cast v5, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;

    .line 158
    invoke-virtual {v5}, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->getProfileTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->startAnimationProfile(Ljava/lang/String;)V

    .line 160
    :cond_2
    iput v2, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mAnimationState:I

    .line 161
    iget-wide v5, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mDuration:J

    cmp-long v3, v5, v3

    if-lez v3, :cond_3

    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mPrevFrameTime:J

    .line 163
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0

    .line 165
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mChoreographer:Landroid/view/Choreographer;

    iget-object v4, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v3, v4}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 166
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->getCurrentFraction()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->notifyListener(IF)V

    .line 167
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->getCurrentFraction()F

    move-result v3

    const/4 v4, 0x3

    invoke-virtual {p0, v4, v3}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->notifyListener(IF)V

    .line 168
    invoke-virtual {p0, v1}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->setCurrentFraction(F)V

    .line 169
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->getCurrentFraction()F

    move-result v1

    invoke-virtual {p0, v4, v1}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->notifyListener(IF)V

    .line 170
    iput-boolean v2, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mIsRunning:Z

    .line 171
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->getCurrentFraction()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->notifyListener(IF)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 173
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method updateFrame()J
    .locals 9

    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 210
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->getCurrentFraction()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v4, v3, v2

    const v5, 0x3dcccccd    # 0.1f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 213
    sget-object v4, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage: fraction cut : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iput v3, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mCurrentFraction:F

    move v2, v3

    .line 218
    :cond_0
    iget v4, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mAnimationState:I

    const/4 v5, 0x0

    const/4 v6, 0x3

    if-nez v4, :cond_1

    .line 219
    invoke-virtual {p0, v5, v2}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->notifyListener(IF)V

    .line 220
    iput v6, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mAnimationState:I

    .line 223
    :cond_1
    iget v4, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mAnimationState:I

    const-wide/16 v7, 0x10

    if-ne v6, v4, :cond_4

    .line 224
    iget v4, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mCurrentFraction:F

    cmpg-float v4, v4, v3

    if-gez v4, :cond_2

    .line 225
    invoke-virtual {p0, v6, v2}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->notifyListener(IF)V

    .line 226
    iget-wide v2, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mPrevFrameTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x30

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    const-wide/16 v7, 0x0

    goto :goto_0

    .line 231
    :cond_2
    iput v3, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mCurrentFraction:F

    .line 232
    invoke-virtual {p0, v6, v2}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->notifyListener(IF)V

    const/4 v3, 0x1

    .line 233
    iput v3, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mAnimationState:I

    .line 234
    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->notifyListener(IF)V

    const-wide/16 v2, -0x1

    .line 236
    iput-boolean v5, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mIsRunning:Z

    move-wide v7, v2

    .line 239
    :cond_3
    :goto_0
    iput-wide v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mPrevFrameTime:J

    .line 240
    iget-wide v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mFrameCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mFrameCount:J

    :cond_4
    return-wide v7
.end method
