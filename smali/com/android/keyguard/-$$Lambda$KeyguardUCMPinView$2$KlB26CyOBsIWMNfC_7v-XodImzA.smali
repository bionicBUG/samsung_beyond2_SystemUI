.class public final synthetic Lcom/android/keyguard/-$$Lambda$KeyguardUCMPinView$2$KlB26CyOBsIWMNfC_7v-XodImzA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/keyguard/KeyguardUCMPinView$2;

.field private final synthetic f$1:I

.field private final synthetic f$2:I

.field private final synthetic f$3:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardUCMPinView$2;IILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUCMPinView$2$KlB26CyOBsIWMNfC_7v-XodImzA;->f$0:Lcom/android/keyguard/KeyguardUCMPinView$2;

    iput p2, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUCMPinView$2$KlB26CyOBsIWMNfC_7v-XodImzA;->f$1:I

    iput p3, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUCMPinView$2$KlB26CyOBsIWMNfC_7v-XodImzA;->f$2:I

    iput-object p4, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUCMPinView$2$KlB26CyOBsIWMNfC_7v-XodImzA;->f$3:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUCMPinView$2$KlB26CyOBsIWMNfC_7v-XodImzA;->f$0:Lcom/android/keyguard/KeyguardUCMPinView$2;

    iget v1, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUCMPinView$2$KlB26CyOBsIWMNfC_7v-XodImzA;->f$1:I

    iget v2, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUCMPinView$2$KlB26CyOBsIWMNfC_7v-XodImzA;->f$2:I

    iget-object p0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUCMPinView$2$KlB26CyOBsIWMNfC_7v-XodImzA;->f$3:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/keyguard/KeyguardUCMPinView$2;->lambda$onVerifyPukResponse$0$KeyguardUCMPinView$2(IILandroid/os/Bundle;)V

    return-void
.end method
