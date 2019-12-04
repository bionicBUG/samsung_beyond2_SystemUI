.class public final synthetic Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback$cSuYmgbvYUjtZFZTYL_KdoX2rD0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/keyguard/KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback$cSuYmgbvYUjtZFZTYL_KdoX2rD0;->f$0:Lcom/android/keyguard/KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback;

    iput p2, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback$cSuYmgbvYUjtZFZTYL_KdoX2rD0;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback$cSuYmgbvYUjtZFZTYL_KdoX2rD0;->f$0:Lcom/android/keyguard/KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback;

    iget p0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback$cSuYmgbvYUjtZFZTYL_KdoX2rD0;->f$1:I

    check-cast p1, Ljava/util/function/Consumer;

    invoke-virtual {v0, p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback;->lambda$onAuthenticationAcquired$4$KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback(ILjava/util/function/Consumer;)V

    return-void
.end method
