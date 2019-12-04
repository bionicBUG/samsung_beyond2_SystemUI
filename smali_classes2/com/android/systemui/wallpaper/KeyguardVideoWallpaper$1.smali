.class Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardVideoWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;)V
    .locals 0

    .line 543
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    .line 556
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;)V

    const-string p1, "KeyguardVideoWallpaper"

    const-string p2, "onBiometricAuthenticated stop video"

    .line 557
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->access$100(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;Z)V

    return-void
.end method

.method public onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    .line 547
    sget-object p2, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p3, p2, :cond_0

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    const-string p1, "KeyguardVideoWallpaper"

    const-string p2, "onBiometricError(Face) pause video"

    .line 549
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->access$100(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;Z)V

    :cond_0
    return-void
.end method
