.class public Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;
.super Ljava/lang/Object;
.source "DynamicLockData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pluginlock/model/DynamicLockData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotificationData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;,
        Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationCardData;
    }
.end annotation


# instance fields
.field mNotiType:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "noti_type"
    .end annotation
.end field

.field mNotificationCardData:Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationCardData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "noti_card_info"
    .end annotation
.end field

.field mNotificationIconOnlyData:Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "noti_icon_info"
    .end annotation
.end field

.field mRecoverType:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recover_type"
    .end annotation
.end field

.field mVisibility:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "visibility"
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/pluginlock/model/DynamicLockData;


# direct methods
.method public constructor <init>(Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;->this$0:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 350
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;->mNotiType:Ljava/lang/Integer;

    .line 352
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;->mRecoverType:Ljava/lang/Integer;

    const/4 p1, -0x1

    .line 354
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;->mVisibility:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method protected clone()Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 565
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;

    return-object p0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 348
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;->clone()Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 570
    instance-of v0, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 571
    check-cast p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;

    .line 572
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;->mNotiType:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;->mNotiType:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;->mNotiType:Ljava/lang/Integer;

    if-eqz v0, :cond_a

    iget-object v2, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;->mNotiType:Ljava/lang/Integer;

    .line 573
    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;->mRecoverType:Ljava/lang/Integer;

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;->mRecoverType:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;->mRecoverType:Ljava/lang/Integer;

    if-eqz v0, :cond_a

    iget-object v2, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;->mRecoverType:Ljava/lang/Integer;

    .line 575
    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;->mVisibility:Ljava/lang/Integer;

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;->mVisibility:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;->mVisibility:Ljava/lang/Integer;

    if-eqz v0, :cond_a

    iget-object v2, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;->mVisibility:Ljava/lang/Integer;

    .line 577
    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;->mNotificationCardData:Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationCardData;

    if-nez v0, :cond_6

    iget-object v0, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;->mNotificationCardData:Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationCardData;

    if-eqz v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;->mNotificationCardData:Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationCardData;

    if-eqz v0, :cond_a

    iget-object v2, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;->mNotificationCardData:Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationCardData;

    .line 580
    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationCardData;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;->mNotificationIconOnlyData:Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;

    if-nez v0, :cond_8

    iget-object v0, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;->mNotificationIconOnlyData:Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;

    if-eqz v0, :cond_9

    :cond_8
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;->mNotificationIconOnlyData:Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;

    if-eqz p0, :cond_a

    iget-object p1, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;->mNotificationIconOnlyData:Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;

    .line 583
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    :cond_9
    const/4 v1, 0x1

    :cond_a
    return v1
.end method

.method public getCardData()Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationCardData;
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;->mNotificationCardData:Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationCardData;

    if-nez v0, :cond_0

    .line 386
    new-instance v0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationCardData;

    invoke-direct {v0, p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationCardData;-><init>(Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;)V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;->mNotificationCardData:Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationCardData;

    .line 388
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;->mNotificationCardData:Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationCardData;

    return-object p0
.end method

.method public getIconOnlyData()Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;->mNotificationIconOnlyData:Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;

    if-nez v0, :cond_0

    .line 393
    new-instance v0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;

    invoke-direct {v0, p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;-><init>(Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;)V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;->mNotificationIconOnlyData:Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;

    .line 395
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;->mNotificationIconOnlyData:Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;

    return-object p0
.end method

.method public getNotiType()Ljava/lang/Integer;
    .locals 0

    .line 361
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;->mNotiType:Ljava/lang/Integer;

    return-object p0
.end method

.method public getVisibility()Ljava/lang/Integer;
    .locals 0

    .line 369
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;->mVisibility:Ljava/lang/Integer;

    return-object p0
.end method

.method public setNotiType(Ljava/lang/Integer;)V
    .locals 0

    .line 373
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;->mNotiType:Ljava/lang/Integer;

    return-void
.end method

.method public setVisibility(Ljava/lang/Integer;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;->mVisibility:Ljava/lang/Integer;

    return-void
.end method
