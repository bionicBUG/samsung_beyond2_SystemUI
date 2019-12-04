.class synthetic Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$4;
.super Ljava/lang/Object;
.source "KeyguardBiometricFingerprintGuidePopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$android$hardware$biometrics$BiometricSourceType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 208
    invoke-static {}, Landroid/hardware/biometrics/BiometricSourceType;->values()[Landroid/hardware/biometrics/BiometricSourceType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$4;->$SwitchMap$android$hardware$biometrics$BiometricSourceType:[I

    :try_start_0
    sget-object v0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$4;->$SwitchMap$android$hardware$biometrics$BiometricSourceType:[I

    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {v1}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$4;->$SwitchMap$android$hardware$biometrics$BiometricSourceType:[I

    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {v1}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
