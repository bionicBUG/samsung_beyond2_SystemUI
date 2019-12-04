.class Lcom/android/keyguard/KeyguardSecPinBasedInputView$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardSecPinBasedInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecPinBasedInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecPinBasedInputView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecPinBasedInputView;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView$2;->this$0:Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    .line 362
    sget-object p0, Landroid/hardware/biometrics/BiometricSourceType;->IRIS:Landroid/hardware/biometrics/BiometricSourceType;

    return-void
.end method
