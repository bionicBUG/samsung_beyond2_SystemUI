.class Lcom/android/keyguard/KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback;
.super Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SecFingerprintAuthenticationCallback"
.end annotation


# instance fields
.field private final mCallbackSeq:I

.field private final mDispatcher:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/function/Consumer<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILjava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;",
            ">;)V"
        }
    .end annotation

    .line 2301
    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;-><init>()V

    .line 2302
    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback;->mCallbackSeq:I

    .line 2303
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback;->mDispatcher:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public synthetic lambda$onAuthenticationAcquired$4$KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback(ILjava/util/function/Consumer;)V
    .locals 2

    .line 2335
    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback;->mCallbackSeq:I

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {v1, p0, p1, v0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;->access$7300(IIILjava/lang/CharSequence;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$onAuthenticationError$3$KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback(ILjava/lang/CharSequence;Ljava/util/function/Consumer;)V
    .locals 2

    .line 2328
    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback;->mCallbackSeq:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, p2, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;->access$7300(IIILjava/lang/CharSequence;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$onAuthenticationFailed$0$KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback(Ljava/util/function/Consumer;)V
    .locals 3

    .line 2309
    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback;->mCallbackSeq:I

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, -0x1

    invoke-static {v1, p0, v2, v0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;->access$7300(IIILjava/lang/CharSequence;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$onAuthenticationHelp$2$KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback(ILjava/lang/CharSequence;Ljava/util/function/Consumer;)V
    .locals 2

    .line 2321
    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback;->mCallbackSeq:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, p2, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;->access$7300(IIILjava/lang/CharSequence;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$onAuthenticationSucceeded$1$KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;Ljava/util/function/Consumer;)V
    .locals 3

    .line 2315
    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback;->mCallbackSeq:I

    const/4 v0, 0x2

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;->access$7300(IIILjava/lang/CharSequence;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public onAuthenticationAcquired(I)V
    .locals 2

    .line 2334
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback;->mDispatcher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Consumer;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback$cSuYmgbvYUjtZFZTYL_KdoX2rD0;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback$cSuYmgbvYUjtZFZTYL_KdoX2rD0;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback;I)V

    .line 2335
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 2

    .line 2327
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback;->mDispatcher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Consumer;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback$40mUNCw0PBuRlQvmAT9IN_CBZsM;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback$40mUNCw0PBuRlQvmAT9IN_CBZsM;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback;ILjava/lang/CharSequence;)V

    .line 2328
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 2

    .line 2308
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback;->mDispatcher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Consumer;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback$ihfy5OxUlUH6K7xJ_X6Xu5X2qnU;

    invoke-direct {v1, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback$ihfy5OxUlUH6K7xJ_X6Xu5X2qnU;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback;)V

    .line 2309
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 2

    .line 2320
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback;->mDispatcher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Consumer;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback$R7pegwdQqyn0uTwp6Mvr2fgh5Yc;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback$R7pegwdQqyn0uTwp6Mvr2fgh5Yc;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback;ILjava/lang/CharSequence;)V

    .line 2321
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 2

    .line 2314
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback;->mDispatcher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Consumer;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback$jjDvis5iS-Z0glFe9L8rANGXOtg;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback$jjDvis5iS-Z0glFe9L8rANGXOtg;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor$SecFingerprintAuthenticationCallback;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V

    .line 2315
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
