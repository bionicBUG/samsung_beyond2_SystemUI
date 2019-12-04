.class Lcom/android/keyguard/KeyguardDirectionLockView$4;
.super Ljava/lang/Object;
.source "KeyguardDirectionLockView.java"

# interfaces
.implements Lcom/android/internal/widget/DirectionLockTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardDirectionLockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardDirectionLockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardDirectionLockView;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDirectionDetected(Ljava/lang/String;Z)V
    .locals 5

    .line 325
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$1500(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    const-string v0, "FINGER_LIFT"

    .line 328
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 330
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$1600(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 331
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$1600(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$1700(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/view/animation/AlphaAnimation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 334
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$1600(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 335
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$1600(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$1800(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/view/animation/AlphaAnimation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 340
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$1900(Lcom/android/keyguard/KeyguardDirectionLockView;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1b58

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 342
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$1902(Lcom/android/keyguard/KeyguardDirectionLockView;J)J

    .line 345
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$100(Lcom/android/keyguard/KeyguardDirectionLockView;)V

    .line 347
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$2000(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->clearAnimation()V

    .line 348
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$2000(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    .line 349
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$2000(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 352
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 353
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    new-instance v2, Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStitchingTimer;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStitchingTimer;-><init>(Lcom/android/keyguard/KeyguardDirectionLockView;Lcom/android/keyguard/KeyguardDirectionLockView$1;)V

    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$1402(Lcom/android/keyguard/KeyguardDirectionLockView;Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStitchingTimer;)Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStitchingTimer;

    .line 354
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$1400(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStitchingTimer;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 355
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$1400(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStitchingTimer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_3
    if-eqz p2, :cond_4

    .line 362
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    .line 363
    invoke-static {p1}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$000(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPassword()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p2, 0x16

    if-gt p1, p2, :cond_4

    .line 364
    iget-object p0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$2200(Lcom/android/keyguard/KeyguardDirectionLockView;)V

    :cond_4
    return-void
.end method

.method public onDirectionStarted()V
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$500(Lcom/android/keyguard/KeyguardDirectionLockView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    iget-object p0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$000(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DirectionLockView;->setAllow(Z)V

    goto :goto_0

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$400(Lcom/android/keyguard/KeyguardDirectionLockView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$1400(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStitchingTimer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$1400(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStitchingTimer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 317
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$1402(Lcom/android/keyguard/KeyguardDirectionLockView;Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStitchingTimer;)Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStitchingTimer;

    .line 319
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$000(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DirectionLockView;->setAllow(Z)V

    :goto_0
    return-void
.end method
