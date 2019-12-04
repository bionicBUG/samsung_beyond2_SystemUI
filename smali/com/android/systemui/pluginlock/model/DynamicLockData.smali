.class public Lcom/android/systemui/pluginlock/model/DynamicLockData;
.super Ljava/lang/Object;
.source "DynamicLockData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/pluginlock/model/DynamicLockData$FingerPrintData;,
        Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData;,
        Lcom/android/systemui/pluginlock/model/DynamicLockData$CaptureData;,
        Lcom/android/systemui/pluginlock/model/DynamicLockData$ShortcutData;,
        Lcom/android/systemui/pluginlock/model/DynamicLockData$NonSwipeModeData;,
        Lcom/android/systemui/pluginlock/model/DynamicLockData$WallpaperData;,
        Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;,
        Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;
    }
.end annotation


# instance fields
.field VERSION:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "version"
    .end annotation
.end field

.field private mCaptureData:Lcom/android/systemui/pluginlock/model/DynamicLockData$CaptureData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "capture_info"
    .end annotation
.end field

.field private mFingerPrintData:Lcom/android/systemui/pluginlock/model/DynamicLockData$FingerPrintData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "finger_print_info"
    .end annotation
.end field

.field private mIndicationData:Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "indication_info"
    .end annotation
.end field

.field private mNonSwipeModeData:Lcom/android/systemui/pluginlock/model/DynamicLockData$NonSwipeModeData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "non_swipe_info"
    .end annotation
.end field

.field private mNotificationData:Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "noti_info"
    .end annotation
.end field

.field private mServiceBoxData:Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "service_box_info"
    .end annotation
.end field

.field private mShortcutData:Lcom/android/systemui/pluginlock/model/DynamicLockData$ShortcutData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "shortcut_info"
    .end annotation
.end field

.field private mWallpaperData:Lcom/android/systemui/pluginlock/model/DynamicLockData$WallpaperData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wallpaper_info"
    .end annotation
.end field

.field private origin:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "origin"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->VERSION:Ljava/lang/Integer;

    const/4 v0, 0x0

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->origin:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method protected clone()Lcom/android/systemui/pluginlock/model/DynamicLockData;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 144
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;

    return-object p0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->clone()Lcom/android/systemui/pluginlock/model/DynamicLockData;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 149
    instance-of v0, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 150
    check-cast p1, Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 151
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mServiceBoxData:Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mServiceBoxData:Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mServiceBoxData:Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;

    if-eqz v0, :cond_a

    iget-object v2, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mServiceBoxData:Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;

    .line 152
    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mNotificationData:Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mNotificationData:Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mNotificationData:Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;

    if-eqz v0, :cond_a

    iget-object v2, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mNotificationData:Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;

    .line 154
    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mWallpaperData:Lcom/android/systemui/pluginlock/model/DynamicLockData$WallpaperData;

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mWallpaperData:Lcom/android/systemui/pluginlock/model/DynamicLockData$WallpaperData;

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mWallpaperData:Lcom/android/systemui/pluginlock/model/DynamicLockData$WallpaperData;

    if-eqz v0, :cond_a

    iget-object v2, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mWallpaperData:Lcom/android/systemui/pluginlock/model/DynamicLockData$WallpaperData;

    .line 156
    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/DynamicLockData$WallpaperData;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mNonSwipeModeData:Lcom/android/systemui/pluginlock/model/DynamicLockData$NonSwipeModeData;

    if-nez v0, :cond_6

    iget-object v0, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mNonSwipeModeData:Lcom/android/systemui/pluginlock/model/DynamicLockData$NonSwipeModeData;

    if-eqz v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mNonSwipeModeData:Lcom/android/systemui/pluginlock/model/DynamicLockData$NonSwipeModeData;

    if-eqz v0, :cond_a

    iget-object v2, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mNonSwipeModeData:Lcom/android/systemui/pluginlock/model/DynamicLockData$NonSwipeModeData;

    .line 158
    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/DynamicLockData$NonSwipeModeData;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mShortcutData:Lcom/android/systemui/pluginlock/model/DynamicLockData$ShortcutData;

    if-nez v0, :cond_8

    iget-object v0, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mShortcutData:Lcom/android/systemui/pluginlock/model/DynamicLockData$ShortcutData;

    if-eqz v0, :cond_9

    :cond_8
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mShortcutData:Lcom/android/systemui/pluginlock/model/DynamicLockData$ShortcutData;

    if-eqz p0, :cond_a

    iget-object p1, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mShortcutData:Lcom/android/systemui/pluginlock/model/DynamicLockData$ShortcutData;

    .line 160
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData$ShortcutData;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    :cond_9
    const/4 v1, 0x1

    :cond_a
    return v1
.end method

.method public getCaptureData()Lcom/android/systemui/pluginlock/model/DynamicLockData$CaptureData;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mCaptureData:Lcom/android/systemui/pluginlock/model/DynamicLockData$CaptureData;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lcom/android/systemui/pluginlock/model/DynamicLockData$CaptureData;

    invoke-direct {v0, p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData$CaptureData;-><init>(Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mCaptureData:Lcom/android/systemui/pluginlock/model/DynamicLockData$CaptureData;

    .line 107
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mCaptureData:Lcom/android/systemui/pluginlock/model/DynamicLockData$CaptureData;

    return-object p0
.end method

.method public getFingerPrintData()Lcom/android/systemui/pluginlock/model/DynamicLockData$FingerPrintData;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mFingerPrintData:Lcom/android/systemui/pluginlock/model/DynamicLockData$FingerPrintData;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Lcom/android/systemui/pluginlock/model/DynamicLockData$FingerPrintData;

    invoke-direct {v0, p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData$FingerPrintData;-><init>(Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mFingerPrintData:Lcom/android/systemui/pluginlock/model/DynamicLockData$FingerPrintData;

    .line 133
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mFingerPrintData:Lcom/android/systemui/pluginlock/model/DynamicLockData$FingerPrintData;

    return-object p0
.end method

.method public getIndicationData()Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mIndicationData:Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData;

    invoke-direct {v0, p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData;-><init>(Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mIndicationData:Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData;

    .line 120
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mIndicationData:Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData;

    return-object p0
.end method

.method public getNonSwipeModeData()Lcom/android/systemui/pluginlock/model/DynamicLockData$NonSwipeModeData;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mNonSwipeModeData:Lcom/android/systemui/pluginlock/model/DynamicLockData$NonSwipeModeData;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NonSwipeModeData;

    invoke-direct {v0, p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData$NonSwipeModeData;-><init>(Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mNonSwipeModeData:Lcom/android/systemui/pluginlock/model/DynamicLockData$NonSwipeModeData;

    .line 81
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mNonSwipeModeData:Lcom/android/systemui/pluginlock/model/DynamicLockData$NonSwipeModeData;

    return-object p0
.end method

.method public getNotificationData()Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mNotificationData:Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;

    invoke-direct {v0, p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;-><init>(Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mNotificationData:Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;

    .line 55
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mNotificationData:Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;

    return-object p0
.end method

.method public getServiceBoxData()Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mServiceBoxData:Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;

    invoke-direct {v0, p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;-><init>(Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mServiceBoxData:Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;

    .line 42
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mServiceBoxData:Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;

    return-object p0
.end method

.method public getShortcutData()Lcom/android/systemui/pluginlock/model/DynamicLockData$ShortcutData;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mShortcutData:Lcom/android/systemui/pluginlock/model/DynamicLockData$ShortcutData;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ShortcutData;

    invoke-direct {v0, p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData$ShortcutData;-><init>(Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mShortcutData:Lcom/android/systemui/pluginlock/model/DynamicLockData$ShortcutData;

    .line 94
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mShortcutData:Lcom/android/systemui/pluginlock/model/DynamicLockData$ShortcutData;

    return-object p0
.end method

.method public getWallpaperData()Lcom/android/systemui/pluginlock/model/DynamicLockData$WallpaperData;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mWallpaperData:Lcom/android/systemui/pluginlock/model/DynamicLockData$WallpaperData;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/android/systemui/pluginlock/model/DynamicLockData$WallpaperData;

    invoke-direct {v0, p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData$WallpaperData;-><init>(Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mWallpaperData:Lcom/android/systemui/pluginlock/model/DynamicLockData$WallpaperData;

    .line 68
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mWallpaperData:Lcom/android/systemui/pluginlock/model/DynamicLockData$WallpaperData;

    return-object p0
.end method

.method public isDlsData()Z
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->origin:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
