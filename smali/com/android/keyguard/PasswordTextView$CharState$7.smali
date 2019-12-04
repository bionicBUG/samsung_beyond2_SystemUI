.class Lcom/android/keyguard/PasswordTextView$CharState$7;
.super Ljava/lang/Object;
.source "PasswordTextView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/PasswordTextView$CharState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/PasswordTextView$CharState;


# direct methods
.method constructor <init>(Lcom/android/keyguard/PasswordTextView$CharState;)V
    .locals 0

    .line 462
    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState$7;->this$1:Lcom/android/keyguard/PasswordTextView$CharState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 465
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState$7;->this$1:Lcom/android/keyguard/PasswordTextView$CharState;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView$CharState;->isCharVisibleForA11y()Z

    move-result v0

    .line 466
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState$7;->this$1:Lcom/android/keyguard/PasswordTextView$CharState;

    iget v2, v1, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    .line 467
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iput v3, v1, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    .line 468
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState$7;->this$1:Lcom/android/keyguard/PasswordTextView$CharState;

    invoke-virtual {v1}, Lcom/android/keyguard/PasswordTextView$CharState;->isCharVisibleForA11y()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 469
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState$7;->this$1:Lcom/android/keyguard/PasswordTextView$CharState;

    iput v2, v0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    .line 470
    iget-object v0, v0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-static {v0}, Lcom/android/keyguard/PasswordTextView;->access$200(Lcom/android/keyguard/PasswordTextView;)Ljava/lang/CharSequence;

    .line 471
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState$7;->this$1:Lcom/android/keyguard/PasswordTextView$CharState;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    .line 481
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/PasswordTextView$CharState$7;->this$1:Lcom/android/keyguard/PasswordTextView$CharState;

    iget-object p0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method
