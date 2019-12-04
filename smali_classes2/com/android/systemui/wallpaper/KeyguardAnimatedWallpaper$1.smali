.class Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardAnimatedWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenTurnedOff()V
    .locals 1

    .line 88
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->access$002(Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;Z)Z

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 1

    .line 93
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->access$002(Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;Z)Z

    return-void
.end method
