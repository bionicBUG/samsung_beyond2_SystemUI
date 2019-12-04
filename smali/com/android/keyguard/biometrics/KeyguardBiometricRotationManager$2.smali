.class Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager$2;
.super Landroid/os/Handler;
.source "KeyguardBiometricRotationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;


# direct methods
.method constructor <init>(Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;Landroid/os/Looper;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic lambda$handleMessage$0(ILcom/android/keyguard/biometrics/KeyguardBiometricRotationListener;)V
    .locals 0

    .line 67
    invoke-interface {p1, p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationListener;->onRotationChanged(I)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 57
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRotationChanged : from mCurrentRotation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;

    invoke-static {v1}, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;->access$100(Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to rotation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardBiometricRotationManager"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;

    invoke-static {v0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;->access$102(Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;I)I

    .line 63
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;->access$200(Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/keyguard/biometrics/-$$Lambda$LLz30GfLzO6eB_6oPJqqQOqA5KA;->INSTANCE:Lcom/android/keyguard/biometrics/-$$Lambda$LLz30GfLzO6eB_6oPJqqQOqA5KA;

    .line 64
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/keyguard/biometrics/-$$Lambda$-Hots0xzjfRqeLx_ciTktU_fhww;->INSTANCE:Lcom/android/keyguard/biometrics/-$$Lambda$-Hots0xzjfRqeLx_ciTktU_fhww;

    .line 65
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/keyguard/biometrics/-$$Lambda$XOs8SYXdPYl1KydvV_0b_KBcgUI;->INSTANCE:Lcom/android/keyguard/biometrics/-$$Lambda$XOs8SYXdPYl1KydvV_0b_KBcgUI;

    .line 66
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricRotationManager$2$T5QtZROaLXjCRITRqoBqzACW2Zw;

    invoke-direct {v0, p1}, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricRotationManager$2$T5QtZROaLXjCRITRqoBqzACW2Zw;-><init>(I)V

    .line 67
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
