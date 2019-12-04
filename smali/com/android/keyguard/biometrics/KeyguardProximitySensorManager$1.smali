.class Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager$1;
.super Ljava/lang/Object;
.source "KeyguardProximitySensorManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


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

    .line 57
    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    .line 61
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 63
    :goto_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 64
    iput v0, v1, Landroid/os/Message;->what:I

    .line 65
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 67
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->access$000(Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 68
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->access$000(Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
