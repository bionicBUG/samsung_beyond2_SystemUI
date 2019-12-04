.class public Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;
.super Ljava/lang/Object;
.source "PluginLockInstanceData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecoverData"
.end annotation


# instance fields
.field private mClock:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "clock"
    .end annotation
.end field

.field private mClockState:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "clock_state"
    .end annotation
.end field

.field private mNotificationOrigin:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "notification_origin"
    .end annotation
.end field

.field private mNotificationState:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "notification"
    .end annotation
.end field

.field private mShortcut:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "shortcut"
    .end annotation
.end field

.field private mShortcutState:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "shortcut_state"
    .end annotation
.end field

.field private mWallpaperDynamic:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wallpaper_dynamic"
    .end annotation
.end field

.field private mWallpaperSource:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wallpaper_source"
    .end annotation
.end field

.field private mWallpaperType:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wallpaper_type"
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;


# direct methods
.method public constructor <init>(Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;)V
    .locals 1

    .line 129
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->this$0:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 131
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mClockState:Ljava/lang/Integer;

    .line 133
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mClock:Ljava/lang/Integer;

    .line 135
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mNotificationState:Ljava/lang/Integer;

    .line 137
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mNotificationOrigin:Ljava/lang/Integer;

    const/4 v0, -0x2

    .line 139
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperDynamic:Ljava/lang/Integer;

    .line 141
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperType:Ljava/lang/Integer;

    .line 143
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperSource:Ljava/lang/Integer;

    .line 145
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mShortcut:Ljava/lang/Integer;

    .line 147
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mShortcutState:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getClock()Ljava/lang/Integer;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mClock:Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    .line 158
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getClockState()Ljava/lang/Integer;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mClockState:Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    .line 151
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getNotificationOrigin()Ljava/lang/Integer;
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mNotificationOrigin:Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    .line 172
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getNotificationState()Ljava/lang/Integer;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mNotificationState:Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    .line 165
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getShortcutBackupValue()Ljava/lang/Integer;
    .locals 0

    .line 206
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mShortcut:Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    .line 207
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getShortcutState()Ljava/lang/Integer;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mShortcutState:Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    .line 200
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getWallpaperDynamic()Ljava/lang/Integer;
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperDynamic:Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, -0x2

    .line 179
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getWallpaperSource()Ljava/lang/Integer;
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperSource:Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    .line 193
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getWallpaperType()Ljava/lang/Integer;
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperType:Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    .line 186
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public setClock(I)V
    .locals 0

    .line 217
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mClock:Ljava/lang/Integer;

    return-void
.end method

.method public setClockState(I)V
    .locals 0

    .line 213
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mClockState:Ljava/lang/Integer;

    return-void
.end method

.method public setNotificationOrigin(Ljava/lang/Integer;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mNotificationOrigin:Ljava/lang/Integer;

    return-void
.end method

.method public setNotificationState(I)V
    .locals 0

    .line 221
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mNotificationState:Ljava/lang/Integer;

    return-void
.end method

.method public setShortcutBackup(I)V
    .locals 0

    .line 241
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mShortcut:Ljava/lang/Integer;

    return-void
.end method

.method public setShortcutState(I)V
    .locals 0

    .line 245
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mShortcutState:Ljava/lang/Integer;

    return-void
.end method

.method public setWallpaperDynamic(I)V
    .locals 0

    .line 229
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperDynamic:Ljava/lang/Integer;

    return-void
.end method

.method public setWallpaperSource(I)V
    .locals 0

    .line 237
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperSource:Ljava/lang/Integer;

    return-void
.end method

.method public setWallpaperType(I)V
    .locals 0

    .line 233
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperType:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mClock:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mNotificationState:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mNotificationOrigin:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperDynamic:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperType:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperSource:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mShortcut:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mShortcutState:Ljava/lang/Integer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
