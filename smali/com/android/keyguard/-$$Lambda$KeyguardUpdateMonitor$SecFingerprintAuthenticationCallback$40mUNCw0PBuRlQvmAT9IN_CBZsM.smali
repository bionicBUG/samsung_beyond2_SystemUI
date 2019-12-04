.class public final synthetic Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback$40mUNCw0PBuRlQvmAT9IN_CBZsM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/keyguard/KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback;

.field private final synthetic f$1:I

.field private final synthetic f$2:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback;ILjava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback$40mUNCw0PBuRlQvmAT9IN_CBZsM;->f$0:Lcom/android/keyguard/KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback;

    iput p2, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback$40mUNCw0PBuRlQvmAT9IN_CBZsM;->f$1:I

    iput-object p3, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback$40mUNCw0PBuRlQvmAT9IN_CBZsM;->f$2:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback$40mUNCw0PBuRlQvmAT9IN_CBZsM;->f$0:Lcom/android/keyguard/KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback;

    iget v1, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback$40mUNCw0PBuRlQvmAT9IN_CBZsM;->f$1:I

    iget-object p0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback$40mUNCw0PBuRlQvmAT9IN_CBZsM;->f$2:Ljava/lang/CharSequence;

    check-cast p1, Ljava/util/function/Consumer;

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback;->lambda$onAuthenticationError$3$KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback(ILjava/lang/CharSequence;Ljava/util/function/Consumer;)V

    return-void
.end method
