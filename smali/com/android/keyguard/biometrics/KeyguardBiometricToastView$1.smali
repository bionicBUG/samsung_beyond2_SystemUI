.class Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$1;
.super Landroid/os/Handler;
.source "KeyguardBiometricToastView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;Landroid/os/Looper;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 84
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->dismiss(Z)V

    :goto_0
    return-void
.end method
