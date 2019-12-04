.class public Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;
.super Ljava/lang/Object;
.source "AnimationListenerAdapterProfiler.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/animation/Animator$AnimatorListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "AnimationListenerAdapterProfiler"


# instance fields
.field private mAnimElapsed:J

.field private mAnimInfo:Ljava/lang/String;

.field private mAnimStartDelayElapsed:J

.field private mFrameCnt:I

.field private mIsCanceled:Z

.field private mIsProfilingStarted:Z

.field private mLastFrameTime:J

.field private mLongestFrameFraction:F

.field private mLongestFrameNum:J

.field private mLongestFrameTime:J

.field private mProfileTag:Ljava/lang/String;

.field private mStartFraction:F


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mIsCanceled:Z

    .line 20
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mIsProfilingStarted:Z

    const-string v1, ""

    .line 21
    iput-object v1, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mProfileTag:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 22
    iput-wide v2, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mAnimStartDelayElapsed:J

    .line 23
    iput v0, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mFrameCnt:I

    .line 24
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mAnimElapsed:J

    const/high16 v0, -0x40800000    # -1.0f

    .line 25
    iput v0, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mStartFraction:F

    .line 26
    iput-object v1, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mAnimInfo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getProfileTag()Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mProfileTag:Ljava/lang/String;

    return-object p0
.end method

.method protected isCanceled()Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mIsCanceled:Z

    return p0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 92
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mIsCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    .line 98
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mIsProfilingStarted:Z

    if-eqz v0, :cond_0

    .line 99
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 100
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v3, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mAnimElapsed:J

    sub-long/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 101
    sget-object v2, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mProfileTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] onAnimationEnd : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mAnimInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " onStart-onEnd took "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms / duration diff= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v4

    sub-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " ms / "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mFrameCnt:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " frames "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mFrameCnt:I

    int-to-float p1, p1

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float/2addr p1, v4

    long-to-float v0, v0

    div-float/2addr p1, v0

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " fps / StartFraction = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mStartFraction:F

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "\nLongest Frame [num : "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mLongestFrameNum:J

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " time : "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mLongestFrameTime:J

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " fracton : "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mLongestFrameFraction:F

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 101
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 7

    .line 71
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mIsProfilingStarted:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 72
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 73
    iput-wide v2, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mAnimElapsed:J

    const/4 v0, 0x0

    .line 74
    iput v0, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mStartFraction:F

    const-wide/16 v4, -0x1

    .line 75
    iput-wide v4, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mLastFrameTime:J

    const-wide/16 v4, 0x0

    .line 76
    iput-wide v4, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mLongestFrameTime:J

    .line 77
    iput-wide v4, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mLongestFrameNum:J

    .line 78
    iput v0, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mLongestFrameFraction:F

    .line 80
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v4, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mAnimStartDelayElapsed:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(duration= "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " / delay= "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mAnimInfo:Ljava/lang/String;

    .line 82
    sget-object v0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mProfileTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] onAnimationStart : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mAnimInfo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " StartDelay took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " ms / delay diff= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {p1}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v5

    sub-long/2addr v2, v5

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " ms. "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 82
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iput v1, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mFrameCnt:I

    .line 86
    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mIsCanceled:Z

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 111
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mIsProfilingStarted:Z

    if-eqz v0, :cond_2

    .line 112
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 113
    iget v2, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mFrameCnt:I

    if-nez v2, :cond_0

    .line 114
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    iput v2, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mStartFraction:F

    .line 116
    :cond_0
    iget-wide v2, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mLastFrameTime:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    sub-long v2, v0, v2

    .line 118
    iget-wide v4, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mLongestFrameTime:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    .line 119
    iput-wide v2, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mLongestFrameTime:J

    .line 120
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mLongestFrameFraction:F

    .line 121
    iget p1, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mFrameCnt:I

    int-to-long v2, p1

    iput-wide v2, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mLongestFrameNum:J

    .line 124
    :cond_1
    iput-wide v0, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mLastFrameTime:J

    .line 125
    iget p1, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mFrameCnt:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mFrameCnt:I

    :cond_2
    return-void
.end method

.method public startAnimationProfile(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mIsProfilingStarted:Z

    if-nez p1, :cond_0

    const-string p1, "Unknown"

    .line 47
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mProfileTag:Ljava/lang/String;

    .line 48
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mAnimStartDelayElapsed:J

    .line 49
    sget-object p1, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mProfileTag:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] startAnimationProfile"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
