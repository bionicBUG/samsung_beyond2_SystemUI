.class public final synthetic Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricRotationManager$VzlYeCodd0GaeSVN8TNpRoF4-qQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/android/keyguard/biometrics/KeyguardBiometricRotationListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/biometrics/KeyguardBiometricRotationListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricRotationManager$VzlYeCodd0GaeSVN8TNpRoF4-qQ;->f$0:Lcom/android/keyguard/biometrics/KeyguardBiometricRotationListener;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricRotationManager$VzlYeCodd0GaeSVN8TNpRoF4-qQ;->f$0:Lcom/android/keyguard/biometrics/KeyguardBiometricRotationListener;

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-static {p0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;->lambda$removeListener$1(Lcom/android/keyguard/biometrics/KeyguardBiometricRotationListener;Ljava/lang/ref/WeakReference;)Z

    move-result p0

    return p0
.end method
