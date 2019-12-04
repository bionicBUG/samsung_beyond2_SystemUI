.class Lcom/android/systemui/statusbar/phone/BiometricUnlockController$6;
.super Ljava/lang/Object;
.source "BiometricUnlockController.java"

# interfaces
.implements Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/BiometricUnlockController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V
    .locals 0

    .line 757
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$6;->this$0:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenTurnedOff()V
    .locals 0

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 3

    .line 760
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_WOF:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledWof()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$6;->this$0:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 761
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->access$700(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDisabledWithBadQuality()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$6;->this$0:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->access$100(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->kg_finger_print_bad_quality_error_message:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 763
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$6;->this$0:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->access$700(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearFingerBadQualityCounts()V

    :cond_0
    return-void
.end method
