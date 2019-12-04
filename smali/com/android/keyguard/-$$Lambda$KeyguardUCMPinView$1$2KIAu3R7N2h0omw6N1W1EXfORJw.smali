.class public final synthetic Lcom/android/keyguard/-$$Lambda$KeyguardUCMPinView$1$2KIAu3R7N2h0omw6N1W1EXfORJw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/keyguard/KeyguardUCMPinView$1;

.field private final synthetic f$1:I

.field private final synthetic f$2:I

.field private final synthetic f$3:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardUCMPinView$1;IILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUCMPinView$1$2KIAu3R7N2h0omw6N1W1EXfORJw;->f$0:Lcom/android/keyguard/KeyguardUCMPinView$1;

    iput p2, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUCMPinView$1$2KIAu3R7N2h0omw6N1W1EXfORJw;->f$1:I

    iput p3, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUCMPinView$1$2KIAu3R7N2h0omw6N1W1EXfORJw;->f$2:I

    iput-object p4, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUCMPinView$1$2KIAu3R7N2h0omw6N1W1EXfORJw;->f$3:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUCMPinView$1$2KIAu3R7N2h0omw6N1W1EXfORJw;->f$0:Lcom/android/keyguard/KeyguardUCMPinView$1;

    iget v1, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUCMPinView$1$2KIAu3R7N2h0omw6N1W1EXfORJw;->f$1:I

    iget v2, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUCMPinView$1$2KIAu3R7N2h0omw6N1W1EXfORJw;->f$2:I

    iget-object p0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUCMPinView$1$2KIAu3R7N2h0omw6N1W1EXfORJw;->f$3:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/keyguard/KeyguardUCMPinView$1;->lambda$onVerifyPinResponse$0$KeyguardUCMPinView$1(IILandroid/os/Bundle;)V

    return-void
.end method
