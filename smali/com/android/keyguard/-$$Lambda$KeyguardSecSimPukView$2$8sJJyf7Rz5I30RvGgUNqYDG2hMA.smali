.class public final synthetic Lcom/android/keyguard/-$$Lambda$KeyguardSecSimPukView$2$8sJJyf7Rz5I30RvGgUNqYDG2hMA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/keyguard/KeyguardSecSimPukView$2;

.field private final synthetic f$1:I

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecSimPukView$2;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/-$$Lambda$KeyguardSecSimPukView$2$8sJJyf7Rz5I30RvGgUNqYDG2hMA;->f$0:Lcom/android/keyguard/KeyguardSecSimPukView$2;

    iput p2, p0, Lcom/android/keyguard/-$$Lambda$KeyguardSecSimPukView$2$8sJJyf7Rz5I30RvGgUNqYDG2hMA;->f$1:I

    iput p3, p0, Lcom/android/keyguard/-$$Lambda$KeyguardSecSimPukView$2$8sJJyf7Rz5I30RvGgUNqYDG2hMA;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardSecSimPukView$2$8sJJyf7Rz5I30RvGgUNqYDG2hMA;->f$0:Lcom/android/keyguard/KeyguardSecSimPukView$2;

    iget v1, p0, Lcom/android/keyguard/-$$Lambda$KeyguardSecSimPukView$2$8sJJyf7Rz5I30RvGgUNqYDG2hMA;->f$1:I

    iget p0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardSecSimPukView$2$8sJJyf7Rz5I30RvGgUNqYDG2hMA;->f$2:I

    invoke-virtual {v0, v1, p0}, Lcom/android/keyguard/KeyguardSecSimPukView$2;->lambda$onSimLockChangedResponse$0$KeyguardSecSimPukView$2(II)V

    return-void
.end method
