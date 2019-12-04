.class Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager$4;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
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
.method constructor <init>(Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager$4;->this$0:Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardVisibilityChanged(Z)V
    .locals 2

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyguardVisibilityChanged() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager$4;->this$0:Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;

    invoke-static {v1}, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->access$400(Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardProximitySensorManager"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager$4;->this$0:Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;

    invoke-static {v0, p1}, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->access$402(Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;Z)Z

    .line 113
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager$4;->this$0:Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->access$100(Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;)V

    return-void
.end method

.method public onStrongAuthStateChanged(I)V
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager$4;->this$0:Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->access$100(Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;)V

    return-void
.end method
