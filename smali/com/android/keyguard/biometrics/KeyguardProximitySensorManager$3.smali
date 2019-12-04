.class Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager$3;
.super Landroid/os/Handler;
.source "KeyguardProximitySensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;


# direct methods
.method constructor <init>(Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;Landroid/os/Looper;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager$3;->this$0:Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic lambda$handleMessage$0(ZLcom/android/keyguard/biometrics/KeyguardProximitySensorListener;)V
    .locals 0

    .line 103
    invoke-interface {p1, p0}, Lcom/android/keyguard/biometrics/KeyguardProximitySensorListener;->onProximitySensorOccludedChanged(Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 92
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 94
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager$3;->this$0:Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;

    invoke-static {v0}, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->access$200(Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onProximitySensorOccludedChanged() isSensorOccluded = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager$3;->this$0:Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;

    .line 96
    invoke-static {v1}, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->access$200(Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardProximitySensorManager"

    .line 95
    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager$3;->this$0:Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;

    invoke-static {v0, p1}, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->access$202(Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;Z)Z

    .line 99
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager$3;->this$0:Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->access$300(Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/keyguard/biometrics/-$$Lambda$LLz30GfLzO6eB_6oPJqqQOqA5KA;->INSTANCE:Lcom/android/keyguard/biometrics/-$$Lambda$LLz30GfLzO6eB_6oPJqqQOqA5KA;

    .line 100
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/keyguard/biometrics/-$$Lambda$BwqmtjohGvlK9h4jTIUT9chQN7I;->INSTANCE:Lcom/android/keyguard/biometrics/-$$Lambda$BwqmtjohGvlK9h4jTIUT9chQN7I;

    .line 101
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/keyguard/biometrics/-$$Lambda$VYqrefur2fs19_83h0zm9qQ0l6I;->INSTANCE:Lcom/android/keyguard/biometrics/-$$Lambda$VYqrefur2fs19_83h0zm9qQ0l6I;

    .line 102
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardProximitySensorManager$3$wKJhT403ENbKtZKcwypOFJl818U;

    invoke-direct {v0, p1}, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardProximitySensorManager$3$wKJhT403ENbKtZKcwypOFJl818U;-><init>(Z)V

    .line 103
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method
