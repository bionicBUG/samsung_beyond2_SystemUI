.class public Lcom/android/systemui/wallpaper/WallpaperLog;
.super Ljava/lang/Object;
.source "WallpaperLog.java"


# static fields
.field private static sLogStore:Lcom/android/systemui/util/DebugLogStore;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 14
    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperLog;->sLogStore:Lcom/android/systemui/util/DebugLogStore;

    if-nez v0, :cond_0

    .line 15
    const-class v0, Lcom/android/systemui/util/DebugLogStore;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/DebugLogStore;

    sput-object v0, Lcom/android/systemui/wallpaper/WallpaperLog;->sLogStore:Lcom/android/systemui/util/DebugLogStore;

    .line 17
    :cond_0
    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperLog;->sLogStore:Lcom/android/systemui/util/DebugLogStore;

    const-string v1, "Wallpaper"

    if-nez v0, :cond_1

    const-string p0, "addLog, sLogStore == null"

    .line 18
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 21
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    sget-object p0, Lcom/android/systemui/wallpaper/WallpaperLog;->sLogStore:Lcom/android/systemui/util/DebugLogStore;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/util/DebugLogStore;->addLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
