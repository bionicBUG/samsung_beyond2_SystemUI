.class Lcom/android/keyguard/KeyguardSimPersoView$2;
.super Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso;
.source "KeyguardSimPersoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSimPersoView;->verifyPasswordAndUnlock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSimPersoView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSimPersoView;Ljava/lang/String;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPersoView$2;->this$0:Lcom/android/keyguard/KeyguardSimPersoView;

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso;-><init>(Lcom/android/keyguard/KeyguardSimPersoView;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onSimCheckResponse$0$KeyguardSimPersoView$2(Z)V
    .locals 5

    .line 261
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView$2;->this$0:Lcom/android/keyguard/KeyguardSimPersoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->resetPasswordText(ZZ)V

    .line 262
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView$2;->this$0:Lcom/android/keyguard/KeyguardSimPersoView;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->setEnabledKeypad(Z)V

    .line 263
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView$2;->this$0:Lcom/android/keyguard/KeyguardSimPersoView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView$2;->this$0:Lcom/android/keyguard/KeyguardSimPersoView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPersoView;->access$000(Lcom/android/keyguard/KeyguardSimPersoView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const-string v0, "KeyguardSimPersoView"

    if-eqz p1, :cond_4

    const-string/jumbo p1, "verifyPasswordAndUnlock onSimCheckResponse verifySucceed"

    .line 267
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    sget-boolean p1, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_KTT_USIM_TEXT:Z

    if-eqz p1, :cond_0

    .line 270
    invoke-static {v2}, Lcom/android/keyguard/KeyguardSimPersoView;->access$102(I)I

    :cond_0
    const-string p1, "ril.simtype"

    .line 275
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 276
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v4, 0x13

    if-ne v0, v4, :cond_2

    .line 277
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x14

    if-ne p1, v0, :cond_2

    :cond_1
    const-string p1, "ril.domesticOtaStart"

    .line 280
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 281
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 282
    :cond_2
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSimPersoView$2;->this$0:Lcom/android/keyguard/KeyguardSimPersoView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView$2;->this$0:Lcom/android/keyguard/KeyguardSimPersoView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPersoView;->access$200(Lcom/android/keyguard/KeyguardSimPersoView;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked(I)V

    .line 283
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSimPersoView$2;->this$0:Lcom/android/keyguard/KeyguardSimPersoView;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-interface {p1, v1, v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    .line 285
    :cond_3
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSimPersoView$2;->this$0:Lcom/android/keyguard/KeyguardSimPersoView;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-interface {p1, v1, v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    goto :goto_0

    :cond_4
    const-string/jumbo p1, "verifyPasswordAndUnlock onSimCheckResponse verifyfail"

    .line 288
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    sget-boolean p1, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_KTT_USIM_TEXT:Z

    if-eqz p1, :cond_5

    .line 291
    invoke-static {}, Lcom/android/keyguard/KeyguardSimPersoView;->access$104()I

    .line 293
    :cond_5
    sget-boolean p1, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_SKT_USIM_TEXT:Z

    if-eqz p1, :cond_6

    .line 294
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSimPersoView$2;->this$0:Lcom/android/keyguard/KeyguardSimPersoView;

    iget-object v0, p1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 295
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/android/keyguard/R$string;->kg_password_perso_failed:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 297
    :cond_6
    invoke-static {}, Lcom/android/keyguard/KeyguardSimPersoView;->access$100()I

    move-result p1

    const/4 v0, 0x5

    if-ge p1, v0, :cond_7

    .line 298
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSimPersoView$2;->this$0:Lcom/android/keyguard/KeyguardSimPersoView;

    iget-object v0, p1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 299
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/android/keyguard/R$string;->kg_password_perso_failed:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 301
    :cond_7
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSimPersoView$2;->this$0:Lcom/android/keyguard/KeyguardSimPersoView;

    iget-object v0, p1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 302
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/android/keyguard/R$string;->kg_password_perso_max_failed:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    .line 306
    :goto_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSimPersoView$2;->this$0:Lcom/android/keyguard/KeyguardSimPersoView;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 307
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSimPersoView$2;->this$0:Lcom/android/keyguard/KeyguardSimPersoView;

    invoke-static {p1, v2}, Lcom/android/keyguard/KeyguardSimPersoView;->access$302(Lcom/android/keyguard/KeyguardSimPersoView;Z)Z

    .line 308
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPersoView$2;->this$0:Lcom/android/keyguard/KeyguardSimPersoView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardSimPersoView;->access$402(Lcom/android/keyguard/KeyguardSimPersoView;Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso;)Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso;

    return-void
.end method

.method onSimCheckResponse(Z)V
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView$2;->this$0:Lcom/android/keyguard/KeyguardSimPersoView;

    new-instance v1, Lcom/android/keyguard/-$$Lambda$KeyguardSimPersoView$2$qSrVq6Lgp9Q6Jjbd2RRsevKMiEU;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/-$$Lambda$KeyguardSimPersoView$2$qSrVq6Lgp9Q6Jjbd2RRsevKMiEU;-><init>(Lcom/android/keyguard/KeyguardSimPersoView$2;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
