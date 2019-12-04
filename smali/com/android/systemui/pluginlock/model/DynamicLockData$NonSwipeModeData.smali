.class public Lcom/android/systemui/pluginlock/model/DynamicLockData$NonSwipeModeData;
.super Ljava/lang/Object;
.source "DynamicLockData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pluginlock/model/DynamicLockData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NonSwipeModeData"
.end annotation


# instance fields
.field mAngle:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "angle"
    .end annotation
.end field

.field mNonSwipeMode:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mode"
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/pluginlock/model/DynamicLockData;


# direct methods
.method public constructor <init>(Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 0

    .line 658
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NonSwipeModeData;->this$0:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 660
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NonSwipeModeData;->mNonSwipeMode:Ljava/lang/Integer;

    const/16 p1, 0x2d

    .line 663
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NonSwipeModeData;->mAngle:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method protected clone()Lcom/android/systemui/pluginlock/model/DynamicLockData$NonSwipeModeData;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 683
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NonSwipeModeData;

    return-object p0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 658
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData$NonSwipeModeData;->clone()Lcom/android/systemui/pluginlock/model/DynamicLockData$NonSwipeModeData;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 688
    instance-of v0, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$NonSwipeModeData;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 689
    check-cast p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$NonSwipeModeData;

    .line 690
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NonSwipeModeData;->mNonSwipeMode:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$NonSwipeModeData;->mNonSwipeMode:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NonSwipeModeData;->mNonSwipeMode:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    iget-object v2, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$NonSwipeModeData;->mNonSwipeMode:Ljava/lang/Integer;

    .line 691
    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NonSwipeModeData;->mAngle:Ljava/lang/Integer;

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$NonSwipeModeData;->mAngle:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NonSwipeModeData;->mAngle:Ljava/lang/Integer;

    if-eqz p0, :cond_4

    iget-object p1, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$NonSwipeModeData;->mAngle:Ljava/lang/Integer;

    .line 692
    invoke-virtual {p0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public getAngle()Ljava/lang/Integer;
    .locals 0

    .line 670
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NonSwipeModeData;->mAngle:Ljava/lang/Integer;

    return-object p0
.end method

.method public getMode()Ljava/lang/Integer;
    .locals 0

    .line 666
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NonSwipeModeData;->mNonSwipeMode:Ljava/lang/Integer;

    return-object p0
.end method
