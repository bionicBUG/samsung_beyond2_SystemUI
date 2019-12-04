.class public final synthetic Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback$ihfy5OxUlUH6K7xJ_X6Xu5X2qnU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/keyguard/KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback$ihfy5OxUlUH6K7xJ_X6Xu5X2qnU;->f$0:Lcom/android/keyguard/KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback$ihfy5OxUlUH6K7xJ_X6Xu5X2qnU;->f$0:Lcom/android/keyguard/KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback;

    check-cast p1, Ljava/util/function/Consumer;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback;->lambda$onAuthenticationFailed$0$KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback(Ljava/util/function/Consumer;)V

    return-void
.end method
