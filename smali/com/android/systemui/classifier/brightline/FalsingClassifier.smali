.class abstract Lcom/android/systemui/classifier/brightline/FalsingClassifier;
.super Ljava/lang/Object;
.source "FalsingClassifier.java"


# instance fields
.field private final mDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;


# virtual methods
.method getAngle()F
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->getAngle()F

    move-result p0

    return p0
.end method

.method getFirstMotionEvent()Landroid/view/MotionEvent;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->getFirstRecentMotionEvent()Landroid/view/MotionEvent;

    move-result-object p0

    return-object p0
.end method

.method final getInteractionType()I
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->getInteractionType()I

    move-result p0

    return p0
.end method

.method getLastMotionEvent()Landroid/view/MotionEvent;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->getLastMotionEvent()Landroid/view/MotionEvent;

    move-result-object p0

    return-object p0
.end method

.method getRecentMotionEvents()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->getRecentMotionEvents()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method getXdpi()F
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->getXdpi()F

    move-result p0

    return p0
.end method

.method getYdpi()F
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->getYdpi()F

    move-result p0

    return p0
.end method

.method abstract isFalseTouch()Z
.end method

.method isHorizontal()Z
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->isHorizontal()Z

    move-result p0

    return p0
.end method

.method isRight()Z
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->isRight()Z

    move-result p0

    return p0
.end method

.method isUp()Z
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->isUp()Z

    move-result p0

    return p0
.end method

.method isVertical()Z
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->isVertical()Z

    move-result p0

    return p0
.end method

.method onSensorEvent(Landroid/hardware/SensorEvent;)V
    .locals 0

    return-void
.end method

.method onSessionEnded()V
    .locals 0

    return-void
.end method

.method onSessionStarted()V
    .locals 0

    return-void
.end method

.method onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method final setInteractionType(I)V
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

    invoke-virtual {p0, p1}, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->setInteractionType(I)V

    return-void
.end method
