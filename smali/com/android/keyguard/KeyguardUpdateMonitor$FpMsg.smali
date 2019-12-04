.class Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FpMsg"
.end annotation


# instance fields
.field private arg:I

.field private msgString:Ljava/lang/CharSequence;

.field private result:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

.field private sequence:I

.field private type:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$6800(Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;)I
    .locals 0

    .line 2271
    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;->type:I

    return p0
.end method

.method static synthetic access$6900(Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;)I
    .locals 0

    .line 2271
    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;->sequence:I

    return p0
.end method

.method static synthetic access$7000(Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;)I
    .locals 0

    .line 2271
    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;->arg:I

    return p0
.end method

.method static synthetic access$7100(Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;)Ljava/lang/CharSequence;
    .locals 0

    .line 2271
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;->msgString:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$7200(Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;
    .locals 0

    .line 2271
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;->result:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    return-object p0
.end method

.method static synthetic access$7300(IIILjava/lang/CharSequence;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;
    .locals 0

    .line 2271
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;->obtain(IIILjava/lang/CharSequence;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;

    move-result-object p0

    return-object p0
.end method

.method private static obtain(IIILjava/lang/CharSequence;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;
    .locals 1

    .line 2286
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;

    invoke-direct {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;-><init>()V

    .line 2287
    iput p0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;->type:I

    .line 2288
    iput p1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;->sequence:I

    .line 2289
    iput p2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;->arg:I

    .line 2290
    iput-object p3, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;->msgString:Ljava/lang/CharSequence;

    .line 2291
    iput-object p4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;->result:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    return-object v0
.end method
