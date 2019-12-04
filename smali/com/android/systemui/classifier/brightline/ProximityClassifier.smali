.class Lcom/android/systemui/classifier/brightline/ProximityClassifier;
.super Lcom/android/systemui/classifier/brightline/FalsingClassifier;
.source "ProximityClassifier.java"


# instance fields
.field private final mDistanceClassifier:Lcom/android/systemui/classifier/brightline/DistanceClassifier;

.field private mGestureStartTimeNs:J

.field private mNear:Z

.field private mNearDurationNs:J

.field private final mPercentCoveredThreshold:F

.field private mPercentNear:F

.field private mPrevNearTimeNs:J


# direct methods
.method private update(ZJ)V
    .locals 4

    .line 130
    iget-wide v0, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mPrevNearTimeNs:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    cmp-long v2, p2, v0

    if-lez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mNear:Z

    if-eqz v2, :cond_0

    .line 131
    iget-wide v2, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mNearDurationNs:J

    sub-long v0, p2, v0

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mNearDurationNs:J

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating duration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mNearDurationNs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    if-eqz p1, :cond_1

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set prevNearTimeNs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    iput-wide p2, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mPrevNearTimeNs:J

    .line 140
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mNear:Z

    return-void
.end method


# virtual methods
.method public isFalseTouch()Z
    .locals 3

    .line 112
    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->getInteractionType()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Percent of gesture in proximity: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mPercentNear:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    iget v0, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mPercentNear:F

    iget v2, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mPercentCoveredThreshold:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 119
    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mDistanceClassifier:Lcom/android/systemui/classifier/brightline/DistanceClassifier;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/DistanceClassifier;->isLongSwipe()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public onSensorEvent(Landroid/hardware/SensorEvent;)V
    .locals 6

    .line 101
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sensor is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v3, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v3

    cmpg-float v1, v1, v3

    const/4 v3, 0x1

    if-gez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " at time "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 105
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    move v2, v3

    :cond_1
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    .line 104
    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->update(ZJ)V

    :cond_2
    return-void
.end method

.method onSessionEnded()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 65
    iput-wide v0, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mPrevNearTimeNs:J

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mPercentNear:F

    return-void
.end method

.method onSessionStarted()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 59
    iput-wide v0, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mPrevNearTimeNs:J

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mPercentNear:F

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 7

    .line 71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1

    .line 74
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTimeNano()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mGestureStartTimeNs:J

    .line 75
    iget-wide v3, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mPrevNearTimeNs:J

    cmp-long v3, v3, v1

    if-lez v3, :cond_0

    .line 78
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTimeNano()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mPrevNearTimeNs:J

    .line 80
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Gesture start time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mGestureStartTimeNs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    iput-wide v1, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mNearDurationNs:J

    :cond_1
    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-ne v0, v3, :cond_5

    .line 85
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mNear:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTimeNano()J

    move-result-wide v3

    invoke-direct {p0, v0, v3, v4}, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->update(ZJ)V

    .line 86
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTimeNano()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mGestureStartTimeNs:J

    sub-long/2addr v3, v5

    .line 88
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Gesture duration, Proximity duration: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mNearDurationNs:J

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    cmp-long p1, v3, v1

    if-nez p1, :cond_4

    .line 91
    iget-boolean p1, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mNear:Z

    if-eqz p1, :cond_3

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mPercentNear:F

    goto :goto_1

    .line 93
    :cond_4
    iget-wide v0, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mNearDurationNs:J

    long-to-float p1, v0

    long-to-float v0, v3

    div-float/2addr p1, v0

    iput p1, p0, Lcom/android/systemui/classifier/brightline/ProximityClassifier;->mPercentNear:F

    :cond_5
    :goto_1
    return-void
.end method
