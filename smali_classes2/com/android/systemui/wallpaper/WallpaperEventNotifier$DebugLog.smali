.class Lcom/android/systemui/wallpaper/WallpaperEventNotifier$DebugLog;
.super Ljava/lang/Object;
.source "WallpaperEventNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/WallpaperEventNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DebugLog"
.end annotation


# instance fields
.field text:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

.field time:J


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;Ljava/lang/String;)V
    .locals 2

    .line 321
    iput-object p1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$DebugLog;->this$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$DebugLog;->time:J

    .line 323
    iput-object p2, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$DebugLog;->text:Ljava/lang/String;

    return-void
.end method
