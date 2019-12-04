.class public final synthetic Lcom/android/keyguard/-$$Lambda$KeyguardCarrierPasswordView$QZUvxAVCA3FD4Kss9X4WLVVjZjo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# instance fields
.field private final synthetic f$0:Lcom/android/keyguard/KeyguardCarrierPasswordView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardCarrierPasswordView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/-$$Lambda$KeyguardCarrierPasswordView$QZUvxAVCA3FD4Kss9X4WLVVjZjo;->f$0:Lcom/android/keyguard/KeyguardCarrierPasswordView;

    return-void
.end method


# virtual methods
.method public final onChecked(ZI)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardCarrierPasswordView$QZUvxAVCA3FD4Kss9X4WLVVjZjo;->f$0:Lcom/android/keyguard/KeyguardCarrierPasswordView;

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->lambda$verifyPasswordAndUnlock$1$KeyguardCarrierPasswordView(ZI)V

    return-void
.end method
