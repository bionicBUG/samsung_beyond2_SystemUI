.class Lcom/android/systemui/classifier/brightline/DistanceClassifier;
.super Lcom/android/systemui/classifier/brightline/FalsingClassifier;
.source "DistanceClassifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;
    }
.end annotation


# instance fields
.field private mCachedDistance:Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;

.field private mDistanceDirty:Z

.field private final mHorizontalFlingThresholdPx:F

.field private final mHorizontalSwipeThresholdPx:F

.field private final mVelocityToDistanceMultiplier:F

.field private final mVerticalFlingThresholdPx:F

.field private final mVerticalSwipeThresholdPx:F


# direct methods
.method static synthetic access$000(Lcom/android/systemui/classifier/brightline/DistanceClassifier;)F
    .locals 0

    .line 35
    iget p0, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier;->mHorizontalSwipeThresholdPx:F

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/classifier/brightline/DistanceClassifier;)F
    .locals 0

    .line 35
    iget p0, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier;->mVerticalSwipeThresholdPx:F

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/classifier/brightline/DistanceClassifier;)F
    .locals 0

    .line 35
    iget p0, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier;->mVelocityToDistanceMultiplier:F

    return p0
.end method

.method static synthetic access$300(Lcom/android/systemui/classifier/brightline/DistanceClassifier;)F
    .locals 0

    .line 35
    iget p0, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier;->mHorizontalFlingThresholdPx:F

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/classifier/brightline/DistanceClassifier;)F
    .locals 0

    .line 35
    iget p0, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier;->mVerticalFlingThresholdPx:F

    return p0
.end method

.method private calculateDistances()Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;
    .locals 8

    .line 112
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->getRecentMotionEvents()Ljava/util/List;

    move-result-object v1

    .line 115
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " motion events recorded."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    new-instance v0, Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;-><init>(Lcom/android/systemui/classifier/brightline/DistanceClassifier;FFFF)V

    return-object v0

    .line 120
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    .line 121
    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 123
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 125
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v6

    .line 126
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v7

    .line 128
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 130
    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->getLastMotionEvent()Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->getFirstMotionEvent()Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float v4, v0, v1

    .line 131
    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->getLastMotionEvent()Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->getFirstMotionEvent()Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float v5, v0, v1

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dX: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " dY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " xV: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " yV: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    new-instance v0, Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;-><init>(Lcom/android/systemui/classifier/brightline/DistanceClassifier;FFFF)V

    return-object v0
.end method

.method private getDistances()Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier;->mDistanceDirty:Z

    if-eqz v0, :cond_0

    .line 103
    invoke-direct {p0}, Lcom/android/systemui/classifier/brightline/DistanceClassifier;->calculateDistances()Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier;->mCachedDistance:Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;

    const/4 v0, 0x0

    .line 104
    iput-boolean v0, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier;->mDistanceDirty:Z

    .line 107
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier;->mCachedDistance:Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;

    return-object p0
.end method


# virtual methods
.method public isFalseTouch()Z
    .locals 0

    .line 145
    invoke-direct {p0}, Lcom/android/systemui/classifier/brightline/DistanceClassifier;->getDistances()Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;->getPassedFlingThreshold()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method isLongSwipe()Z
    .locals 2

    .line 149
    invoke-direct {p0}, Lcom/android/systemui/classifier/brightline/DistanceClassifier;->getDistances()Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;->getPassedDistanceThreshold()Z

    move-result p0

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Is longSwipe? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    const/4 p1, 0x1

    .line 140
    iput-boolean p1, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier;->mDistanceDirty:Z

    return-void
.end method
