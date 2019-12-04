.class public final synthetic Lcom/android/keyguard/-$$Lambda$KeyguardFMMView$vSYpHMUaStOgGiRD1zixmV_xE-M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# instance fields
.field private final synthetic f$0:Lcom/android/keyguard/KeyguardFMMView;

.field private final synthetic f$1:I

.field private final synthetic f$2:[B


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardFMMView;I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/-$$Lambda$KeyguardFMMView$vSYpHMUaStOgGiRD1zixmV_xE-M;->f$0:Lcom/android/keyguard/KeyguardFMMView;

    iput p2, p0, Lcom/android/keyguard/-$$Lambda$KeyguardFMMView$vSYpHMUaStOgGiRD1zixmV_xE-M;->f$1:I

    iput-object p3, p0, Lcom/android/keyguard/-$$Lambda$KeyguardFMMView$vSYpHMUaStOgGiRD1zixmV_xE-M;->f$2:[B

    return-void
.end method


# virtual methods
.method public final onChecked(ZI)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardFMMView$vSYpHMUaStOgGiRD1zixmV_xE-M;->f$0:Lcom/android/keyguard/KeyguardFMMView;

    iget v1, p0, Lcom/android/keyguard/-$$Lambda$KeyguardFMMView$vSYpHMUaStOgGiRD1zixmV_xE-M;->f$1:I

    iget-object p0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardFMMView$vSYpHMUaStOgGiRD1zixmV_xE-M;->f$2:[B

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/android/keyguard/KeyguardFMMView;->lambda$verifyPasswordAndUnlock$3$KeyguardFMMView(I[BZI)V

    return-void
.end method
