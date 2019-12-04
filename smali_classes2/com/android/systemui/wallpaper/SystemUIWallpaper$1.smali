.class Lcom/android/systemui/wallpaper/SystemUIWallpaper$1;
.super Ljava/lang/Object;
.source "SystemUIWallpaper.java"

# interfaces
.implements Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/SystemUIWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/SystemUIWallpaper;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/SystemUIWallpaper;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/SystemUIWallpaper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayChanged(I)V
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/SystemUIWallpaper;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->updateDisplayInfo()V

    return-void
.end method
