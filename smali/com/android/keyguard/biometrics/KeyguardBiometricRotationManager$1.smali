.class Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager$1;
.super Landroid/view/IRotationWatcher$Stub;
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
.method constructor <init>(Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;

    invoke-direct {p0}, Landroid/view/IRotationWatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRotationChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    .line 47
    iput v1, v0, Landroid/os/Message;->what:I

    .line 48
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 50
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;->access$000(Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 51
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;->access$000(Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
