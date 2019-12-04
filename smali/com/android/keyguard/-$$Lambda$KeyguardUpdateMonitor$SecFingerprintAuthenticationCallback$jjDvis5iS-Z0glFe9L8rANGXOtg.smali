.class public final synthetic Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback$jjDvis5iS-Z0glFe9L8rANGXOtg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/keyguard/KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback;

.field private final synthetic f$1:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback$jjDvis5iS-Z0glFe9L8rANGXOtg;->f$0:Lcom/android/keyguard/KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback;

    iput-object p2, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback$jjDvis5iS-Z0glFe9L8rANGXOtg;->f$1:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback$jjDvis5iS-Z0glFe9L8rANGXOtg;->f$0:Lcom/android/keyguard/KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback;

    iget-object p0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback$jjDvis5iS-Z0glFe9L8rANGXOtg;->f$1:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    check-cast p1, Ljava/util/function/Consumer;

    invoke-virtual {v0, p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback;->lambda$onAuthenticationSucceeded$1$KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;Ljava/util/function/Consumer;)V

    return-void
.end method
