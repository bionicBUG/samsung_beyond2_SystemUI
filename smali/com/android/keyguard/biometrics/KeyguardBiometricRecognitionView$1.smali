.class Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView$1;
.super Ljava/lang/Object;
.source "KeyguardBiometricRecognitionView.java"

# interfaces
.implements Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;)V
    .locals 0

    .line 424
    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFolderStateChanged(Z)V
    .locals 0

    .line 427
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;

    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->updateLayout()V

    return-void
.end method
