.class public Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationCardData;
.super Ljava/lang/Object;
.source "DynamicLockData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotificationCardData"
.end annotation


# instance fields
.field mNotiCardBottom:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "noti_card_bottom"
    .end annotation
.end field

.field mNotiCardBottomOffset:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "noti_card_bottom_offset"
    .end annotation
.end field

.field mNotiCardNumbers:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "noti_card_numbers"
    .end annotation
.end field

.field mNotiCardTop:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "noti_card_top"
    .end annotation
.end field

.field final synthetic this$1:Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;


# direct methods
.method public constructor <init>(Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationCardData;->this$1:Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 408
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationCardData;->mNotiCardTop:Ljava/lang/Integer;

    .line 410
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationCardData;->mNotiCardBottom:Ljava/lang/Integer;

    .line 412
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationCardData;->mNotiCardBottomOffset:Ljava/lang/Integer;

    .line 414
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationCardData;->mNotiCardNumbers:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method protected clone()Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationCardData;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 450
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationCardData;

    return-object p0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 406
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationCardData;->clone()Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationCardData;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 455
    instance-of v0, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationCardData;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 456
    check-cast p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationCardData;

    .line 457
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationCardData;->mNotiCardTop:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationCardData;->mNotiCardTop:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationCardData;->mNotiCardTop:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    iget-object v2, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationCardData;->mNotiCardTop:Ljava/lang/Integer;

    .line 458
    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationCardData;->mNotiCardBottom:Ljava/lang/Integer;

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationCardData;->mNotiCardBottom:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationCardData;->mNotiCardBottom:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    iget-object v2, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationCardData;->mNotiCardBottom:Ljava/lang/Integer;

    .line 460
    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationCardData;->mNotiCardBottomOffset:Ljava/lang/Integer;

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationCardData;->mNotiCardBottomOffset:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationCardData;->mNotiCardBottomOffset:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    iget-object v2, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationCardData;->mNotiCardBottomOffset:Ljava/lang/Integer;

    .line 462
    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationCardData;->mNotiCardNumbers:Ljava/lang/Integer;

    if-nez v0, :cond_6

    iget-object v0, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationCardData;->mNotiCardNumbers:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    :cond_6
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationCardData;->mNotiCardNumbers:Ljava/lang/Integer;

    if-eqz p0, :cond_8

    iget-object p1, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationCardData;->mNotiCardNumbers:Ljava/lang/Integer;

    .line 464
    invoke-virtual {p0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    :cond_7
    const/4 v1, 0x1

    :cond_8
    return v1
.end method

.method public getNotiCardBottom()Ljava/lang/Integer;
    .locals 0

    .line 421
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationCardData;->mNotiCardBottom:Ljava/lang/Integer;

    return-object p0
.end method

.method public getNotiCardBottomOffset()Ljava/lang/Integer;
    .locals 0

    .line 429
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationCardData;->mNotiCardBottomOffset:Ljava/lang/Integer;

    return-object p0
.end method

.method public getNotiCardNumbers()Ljava/lang/Integer;
    .locals 0

    .line 425
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationCardData;->mNotiCardNumbers:Ljava/lang/Integer;

    return-object p0
.end method

.method public getNotiCardTop()Ljava/lang/Integer;
    .locals 0

    .line 417
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationCardData;->mNotiCardTop:Ljava/lang/Integer;

    return-object p0
.end method

.method public setNotiCardBottom(Ljava/lang/Integer;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationCardData;->mNotiCardBottom:Ljava/lang/Integer;

    return-void
.end method

.method public setNotiCardNumbers(Ljava/lang/Integer;)V
    .locals 0

    .line 445
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationCardData;->mNotiCardNumbers:Ljava/lang/Integer;

    return-void
.end method

.method public setNotiCardTop(Ljava/lang/Integer;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationCardData;->mNotiCardTop:Ljava/lang/Integer;

    return-void
.end method
