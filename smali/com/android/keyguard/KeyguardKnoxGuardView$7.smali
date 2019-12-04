.class Lcom/android/keyguard/KeyguardKnoxGuardView$7;
.super Landroid/os/CountDownTimer;
.source "KeyguardKnoxGuardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardKnoxGuardView;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardKnoxGuardView;JJ)V
    .locals 0

    .line 471
    iput-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardView$7;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    const/4 v0, 0x0

    .line 502
    invoke-static {v0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->access$1302(Z)Z

    .line 503
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView$7;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->access$300(Lcom/android/keyguard/KeyguardKnoxGuardView;)V

    .line 504
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView$7;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardKnoxGuardView;->setPasswordEntryEnabled(Z)V

    .line 505
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView$7;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->resetState()V

    return-void
.end method

.method public onTick(J)V
    .locals 6

    const-wide/16 v0, 0x3e8

    .line 474
    div-long/2addr p1, v0

    long-to-int p1, p1

    .line 475
    div-int/lit8 p2, p1, 0x3c

    .line 476
    div-int/lit8 v0, p2, 0x3c

    .line 477
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTick() secondsRemaining: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyguardKnoxGuardView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/16 v4, 0xe10

    if-le p1, v4, :cond_0

    .line 479
    iget-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardView$7;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardKnoxGuardView;->access$1200(Lcom/android/keyguard/KeyguardKnoxGuardView;)Lcom/android/systemui/widget/SystemUITextView;

    move-result-object p1

    iget-object p2, p0, Lcom/android/keyguard/KeyguardKnoxGuardView$7;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v4, Lcom/android/systemui/R$plurals;->kg_knox_guard_incorrect_pin_remaining_hours_left_phone:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 481
    invoke-static {}, Lcom/android/keyguard/KeyguardKnoxGuardView;->access$1100()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v1

    .line 479
    invoke-virtual {p2, v4, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView$7;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->access$1200(Lcom/android/keyguard/KeyguardKnoxGuardView;)Lcom/android/systemui/widget/SystemUITextView;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x3c

    if-le p1, v0, :cond_1

    .line 484
    iget-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardView$7;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardKnoxGuardView;->access$1200(Lcom/android/keyguard/KeyguardKnoxGuardView;)Lcom/android/systemui/widget/SystemUITextView;

    move-result-object p1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView$7;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/android/systemui/R$plurals;->kg_knox_guard_incorrect_pin_remaining_mins_left_phone:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 486
    invoke-static {}, Lcom/android/keyguard/KeyguardKnoxGuardView;->access$1100()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v1

    .line 484
    invoke-virtual {v0, v4, p2, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView$7;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->access$1200(Lcom/android/keyguard/KeyguardKnoxGuardView;)Lcom/android/systemui/widget/SystemUITextView;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    if-lez p1, :cond_2

    .line 490
    iget-object p2, p0, Lcom/android/keyguard/KeyguardKnoxGuardView$7;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-static {p2}, Lcom/android/keyguard/KeyguardKnoxGuardView;->access$1200(Lcom/android/keyguard/KeyguardKnoxGuardView;)Lcom/android/systemui/widget/SystemUITextView;

    move-result-object p2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView$7;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/android/systemui/R$plurals;->kg_knox_guard_incorrect_pin_remaining_seconds_left_phone:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 492
    invoke-static {}, Lcom/android/keyguard/KeyguardKnoxGuardView;->access$1100()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v1

    .line 490
    invoke-virtual {v0, v4, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 493
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView$7;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->access$1200(Lcom/android/keyguard/KeyguardKnoxGuardView;)Lcom/android/systemui/widget/SystemUITextView;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    goto :goto_0

    .line 495
    :cond_2
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView$7;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->access$300(Lcom/android/keyguard/KeyguardKnoxGuardView;)V

    :goto_0
    return-void
.end method
