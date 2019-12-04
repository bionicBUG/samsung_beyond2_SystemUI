.class public Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;
.super Ljava/lang/Object;
.source "DynamicLockData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotificationIconOnlyData"
.end annotation


# instance fields
.field mGravity:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gravity"
    .end annotation
.end field

.field mPaddingEnd:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "padding_end"
    .end annotation
.end field

.field mPaddingStart:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "padding_start"
    .end annotation
.end field

.field mPaddingStartOffset:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "padding_start_offset"
    .end annotation
.end field

.field mPaddingTop:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "padding_top"
    .end annotation
.end field

.field mPaddingTopOffset:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "padding_top_offset"
    .end annotation
.end field

.field final synthetic this$1:Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;


# direct methods
.method public constructor <init>(Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;)V
    .locals 0

    .line 472
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;->this$1:Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 474
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;->mGravity:Ljava/lang/Integer;

    .line 476
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;->mPaddingStart:Ljava/lang/Integer;

    .line 478
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;->mPaddingEnd:Ljava/lang/Integer;

    .line 480
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;->mPaddingTop:Ljava/lang/Integer;

    .line 482
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;->mPaddingStartOffset:Ljava/lang/Integer;

    .line 484
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;->mPaddingTopOffset:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method protected clone()Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 536
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;

    return-object p0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 472
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;->clone()Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 541
    instance-of v0, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 542
    check-cast p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;

    .line 543
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;->mGravity:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;->mGravity:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;->mGravity:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    iget-object v2, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;->mGravity:Ljava/lang/Integer;

    .line 544
    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;->mPaddingStart:Ljava/lang/Integer;

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;->mPaddingStart:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;->mPaddingStart:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    iget-object v2, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;->mPaddingStart:Ljava/lang/Integer;

    .line 546
    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;->mPaddingEnd:Ljava/lang/Integer;

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;->mPaddingEnd:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;->mPaddingEnd:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    iget-object v2, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;->mPaddingEnd:Ljava/lang/Integer;

    .line 548
    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;->mPaddingTop:Ljava/lang/Integer;

    if-nez v0, :cond_6

    iget-object v0, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;->mPaddingTop:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;->mPaddingTop:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    iget-object v2, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;->mPaddingTop:Ljava/lang/Integer;

    .line 550
    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;->mPaddingStartOffset:Ljava/lang/Integer;

    if-nez v0, :cond_8

    iget-object v0, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;->mPaddingStartOffset:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;->mPaddingStartOffset:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    iget-object v2, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;->mPaddingStartOffset:Ljava/lang/Integer;

    .line 553
    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_9
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;->mPaddingTopOffset:Ljava/lang/Integer;

    if-nez v0, :cond_a

    iget-object v0, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;->mPaddingTopOffset:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    :cond_a
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;->mPaddingTopOffset:Ljava/lang/Integer;

    if-eqz p0, :cond_c

    iget-object p1, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;->mPaddingTopOffset:Ljava/lang/Integer;

    .line 555
    invoke-virtual {p0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    :cond_b
    const/4 v1, 0x1

    :cond_c
    return v1
.end method

.method public getGravity()Ljava/lang/Integer;
    .locals 0

    .line 487
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;->mGravity:Ljava/lang/Integer;

    return-object p0
.end method

.method public getPaddingEnd()Ljava/lang/Integer;
    .locals 0

    .line 495
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;->mPaddingEnd:Ljava/lang/Integer;

    return-object p0
.end method

.method public getPaddingStart()Ljava/lang/Integer;
    .locals 0

    .line 491
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;->mPaddingStart:Ljava/lang/Integer;

    return-object p0
.end method

.method public getPaddingStartOffset()Ljava/lang/Integer;
    .locals 0

    .line 503
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;->mPaddingStartOffset:Ljava/lang/Integer;

    return-object p0
.end method

.method public getPaddingTop()Ljava/lang/Integer;
    .locals 0

    .line 499
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;->mPaddingTop:Ljava/lang/Integer;

    return-object p0
.end method

.method public getPaddingTopOffset()Ljava/lang/Integer;
    .locals 0

    .line 507
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;->mPaddingTopOffset:Ljava/lang/Integer;

    return-object p0
.end method

.method public setGravity(Ljava/lang/Integer;)V
    .locals 0

    .line 511
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;->mGravity:Ljava/lang/Integer;

    return-void
.end method

.method public setPaddingEnd(Ljava/lang/Integer;)V
    .locals 0

    .line 519
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;->mPaddingEnd:Ljava/lang/Integer;

    return-void
.end method

.method public setPaddingStart(Ljava/lang/Integer;)V
    .locals 0

    .line 515
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;->mPaddingStart:Ljava/lang/Integer;

    return-void
.end method

.method public setPaddingTop(Ljava/lang/Integer;)V
    .locals 0

    .line 523
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;->mPaddingTop:Ljava/lang/Integer;

    return-void
.end method
