.class public final enum Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;
.super Ljava/lang/Enum;
.source "KeyguardBiometricToastView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ToastType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

.field public static final enum Authenticating:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

.field public static final enum AuthenticationFail:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

.field public static final enum AuthenticationSuccess:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

.field public static final enum FingerprintAuthenticationFail:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

.field public static final enum FingerprintAuthenticationSuccess:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 71
    new-instance v0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    const/4 v1, 0x0

    const-string v2, "Authenticating"

    invoke-direct {v0, v2, v1}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;->Authenticating:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    .line 72
    new-instance v0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    const/4 v2, 0x1

    const-string v3, "AuthenticationSuccess"

    invoke-direct {v0, v3, v2}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;->AuthenticationSuccess:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    .line 73
    new-instance v0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    const/4 v3, 0x2

    const-string v4, "AuthenticationFail"

    invoke-direct {v0, v4, v3}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;->AuthenticationFail:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    .line 74
    new-instance v0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    const/4 v4, 0x3

    const-string v5, "FingerprintAuthenticationSuccess"

    invoke-direct {v0, v5, v4}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;->FingerprintAuthenticationSuccess:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    .line 75
    new-instance v0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    const/4 v5, 0x4

    const-string v6, "FingerprintAuthenticationFail"

    invoke-direct {v0, v6, v5}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;->FingerprintAuthenticationFail:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    .line 70
    sget-object v6, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;->Authenticating:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    aput-object v6, v0, v1

    sget-object v1, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;->AuthenticationSuccess:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;->AuthenticationFail:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;->FingerprintAuthenticationSuccess:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;->FingerprintAuthenticationFail:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;->$VALUES:[Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;
    .locals 1

    .line 70
    const-class v0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    return-object p0
.end method

.method public static values()[Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;
    .locals 1

    .line 70
    sget-object v0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;->$VALUES:[Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    invoke-virtual {v0}, [Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    return-object v0
.end method
