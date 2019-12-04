.class public Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$LockButtonData;
.super Ljava/lang/Object;
.source "DynamicLockData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LockButtonData"
.end annotation


# instance fields
.field mLockButtonVisibility:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "visibility"
    .end annotation
.end field

.field mX:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "x"
    .end annotation
.end field

.field mY:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "y"
    .end annotation
.end field


# virtual methods
.method protected clone()Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$LockButtonData;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1021
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$LockButtonData;

    return-object p0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 987
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$LockButtonData;->clone()Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$LockButtonData;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1026
    instance-of v0, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$LockButtonData;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 1027
    check-cast p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$LockButtonData;

    .line 1028
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$LockButtonData;->mLockButtonVisibility:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$LockButtonData;->mLockButtonVisibility:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$LockButtonData;->mLockButtonVisibility:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    iget-object v2, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$LockButtonData;->mLockButtonVisibility:Ljava/lang/Integer;

    .line 1029
    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$LockButtonData;->mX:Ljava/lang/Integer;

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$LockButtonData;->mX:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$LockButtonData;->mX:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    iget-object v2, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$LockButtonData;->mX:Ljava/lang/Integer;

    .line 1030
    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$LockButtonData;->mY:Ljava/lang/Integer;

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$LockButtonData;->mY:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$LockButtonData;->mY:Ljava/lang/Integer;

    if-eqz p0, :cond_6

    iget-object p1, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$LockButtonData;->mY:Ljava/lang/Integer;

    .line 1031
    invoke-virtual {p0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    const/4 v1, 0x1

    :cond_6
    return v1
.end method
