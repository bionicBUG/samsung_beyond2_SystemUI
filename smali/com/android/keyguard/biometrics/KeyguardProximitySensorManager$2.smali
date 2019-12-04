.class Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager$2;
.super Ljava/lang/Object;
.source "KeyguardProximitySensorManager.java"

# interfaces
.implements Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;


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

    .line 76
    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenTurnedOff()V
    .locals 2

    const-string v0, "KeyguardProximitySensorManager"

    const-string v1, "onScreenTurnedOff()"

    .line 85
    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->access$100(Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;)V

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    const-string v0, "KeyguardProximitySensorManager"

    const-string v1, "onScreenTurnedOn()"

    .line 79
    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->access$100(Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;)V

    return-void
.end method
