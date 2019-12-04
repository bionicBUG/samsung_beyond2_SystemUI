.class public final synthetic Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardProximitySensorManager$3$wKJhT403ENbKtZKcwypOFJl818U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardProximitySensorManager$3$wKJhT403ENbKtZKcwypOFJl818U;->f$0:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardProximitySensorManager$3$wKJhT403ENbKtZKcwypOFJl818U;->f$0:Z

    check-cast p1, Lcom/android/keyguard/biometrics/KeyguardProximitySensorListener;

    invoke-static {p0, p1}, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager$3;->lambda$handleMessage$0(ZLcom/android/keyguard/biometrics/KeyguardProximitySensorListener;)V

    return-void
.end method
