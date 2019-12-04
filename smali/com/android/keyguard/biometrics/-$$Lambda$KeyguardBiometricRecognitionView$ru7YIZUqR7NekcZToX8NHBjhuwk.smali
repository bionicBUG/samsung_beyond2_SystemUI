.class public final synthetic Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricRecognitionView$ru7YIZUqR7NekcZToX8NHBjhuwk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/airbnb/lottie/LottieListener;


# instance fields
.field private final synthetic f$0:Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricRecognitionView$ru7YIZUqR7NekcZToX8NHBjhuwk;->f$0:Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricRecognitionView$ru7YIZUqR7NekcZToX8NHBjhuwk;->f$0:Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;

    check-cast p1, Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->lambda$updateVisualCueIcon$1$KeyguardBiometricRecognitionView(Lcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method
