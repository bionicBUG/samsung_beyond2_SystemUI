.class Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardMotionWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)V
    .locals 0

    .line 742
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardBouncerChanged(Z)V
    .locals 2

    .line 745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bouncerChanged = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardMotionWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 746
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$1900(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 747
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$2000(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)V

    :cond_0
    return-void
.end method
