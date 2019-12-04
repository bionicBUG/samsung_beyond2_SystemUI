.class public final synthetic Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardProximitySensorManager$hRtTnW84OvekqUqsqDQoENDaoe0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/android/keyguard/biometrics/KeyguardProximitySensorListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/biometrics/KeyguardProximitySensorListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardProximitySensorManager$hRtTnW84OvekqUqsqDQoENDaoe0;->f$0:Lcom/android/keyguard/biometrics/KeyguardProximitySensorListener;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardProximitySensorManager$hRtTnW84OvekqUqsqDQoENDaoe0;->f$0:Lcom/android/keyguard/biometrics/KeyguardProximitySensorListener;

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-static {p0, p1}, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->lambda$addListener$0(Lcom/android/keyguard/biometrics/KeyguardProximitySensorListener;Ljava/lang/ref/WeakReference;)Z

    move-result p0

    return p0
.end method
