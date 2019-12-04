.class public final synthetic Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricRotationManager$2$T5QtZROaLXjCRITRqoBqzACW2Zw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricRotationManager$2$T5QtZROaLXjCRITRqoBqzACW2Zw;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricRotationManager$2$T5QtZROaLXjCRITRqoBqzACW2Zw;->f$0:I

    check-cast p1, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationListener;

    invoke-static {p0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager$2;->lambda$handleMessage$0(ILcom/android/keyguard/biometrics/KeyguardBiometricRotationListener;)V

    return-void
.end method
