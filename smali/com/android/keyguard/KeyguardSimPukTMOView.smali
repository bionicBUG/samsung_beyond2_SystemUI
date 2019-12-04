.class public Lcom/android/keyguard/KeyguardSimPukTMOView;
.super Landroid/widget/LinearLayout;
.source "KeyguardSimPukTMOView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;


# instance fields
.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSimPukTMOView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance p1, Lcom/android/keyguard/KeyguardSimPukTMOView$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardSimPukTMOView$1;-><init>(Lcom/android/keyguard/KeyguardSimPukTMOView;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukTMOView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardSimPukTMOView;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPukTMOView;->updateEmergencyCallButton()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardSimPukTMOView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukTMOView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object p0
.end method

.method private getTelecomManager()Landroid/telecom/TelecomManager;
    .locals 1

    .line 148
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo v0, "telecom"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telecom/TelecomManager;

    return-object p0
.end method

.method private isInCall(Landroid/telecom/TelecomManager;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 140
    invoke-virtual {p1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result p0

    return p0

    :cond_0
    const-string p0, "KeyguardSimPukTMOView"

    const-string p1, "isInCall : TelecomManager is null"

    .line 142
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private resumeCall(Landroid/telecom/TelecomManager;)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 129
    invoke-virtual {p1, p0}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V

    goto :goto_0

    :cond_0
    const-string p0, "KeyguardSimPukTMOView"

    const-string p1, "resumeCall : TelecomManager is null"

    .line 131
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private updateEmergencyCallButton()V
    .locals 2

    .line 111
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110105

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    sget v0, Lcom/android/keyguard/R$id;->emergency_call_button:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 115
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPukTMOView;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardSimPukTMOView;->isInCall(Landroid/telecom/TelecomManager;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x104054f

    .line 116
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 118
    :cond_0
    sget p0, Lcom/android/keyguard/R$string;->kg_lockscreen_emergency_call_button_text:I

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setText(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public synthetic lambda$onFinishInflate$0$KeyguardSimPukTMOView(Landroid/view/View;)V
    .locals 1

    .line 175
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPukTMOView;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object p1

    .line 176
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSimPukTMOView;->isInCall(Landroid/telecom/TelecomManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSimPukTMOView;->resumeCall(Landroid/telecom/TelecomManager;)V

    return-void

    .line 180
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSimPukTMOView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-nez p1, :cond_1

    return-void

    .line 182
    :cond_1
    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 183
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10800000

    .line 184
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 186
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$onFinishInflate$1$KeyguardSimPukTMOView(Landroid/view/View;)V
    .locals 3

    .line 196
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSimPukTMOView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-nez p1, :cond_0

    return-void

    .line 198
    :cond_0
    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 199
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.CALL_EMERGENCY"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string/jumbo v1, "tel"

    const-string v2, "911"

    .line 200
    invoke-static {v1, v2, v0}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 201
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 202
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public needsInput()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 306
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 307
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukTMOView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 312
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 313
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukTMOView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .line 153
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 154
    sget v0, Lcom/android/keyguard/R$id;->keyguard_unlock_view_help_text:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 155
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110105

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v0, :cond_1

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$string;->kg_sim_puk_tmo_help_pin_blocked:I

    .line 159
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$string;->kg_sim_puk_tmo_help_contact_service_provider:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_0

    .line 162
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x104033b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 164
    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    :cond_1
    sget v0, Lcom/android/keyguard/R$id;->emergency_call_button:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_3

    if-eqz v1, :cond_2

    .line 170
    sget v2, Lcom/android/keyguard/R$string;->kg_lockscreen_emergency_call_button_text:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 172
    :cond_2
    sget v2, Lcom/android/keyguard/R$string;->kg_sim_puk_tmo_enter_unlock_code:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 174
    :goto_0
    new-instance v2, Lcom/android/keyguard/-$$Lambda$KeyguardSimPukTMOView$C9fsqbC3UeYrf3DMkOimjNyRvvo;

    invoke-direct {v2, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardSimPukTMOView$C9fsqbC3UeYrf3DMkOimjNyRvvo;-><init>(Lcom/android/keyguard/KeyguardSimPukTMOView;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    :cond_3
    sget v0, Lcom/android/keyguard/R$id;->forgot_password_button:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v1, :cond_4

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    .line 193
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 194
    sget v1, Lcom/android/keyguard/R$string;->kg_sim_puk_tmo_sos_call:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 195
    new-instance v1, Lcom/android/keyguard/-$$Lambda$KeyguardSimPukTMOView$sa4jPBHjF-HRWN7hmYP8sgmBfxo;

    invoke-direct {v1, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardSimPukTMOView$sa4jPBHjF-HRWN7hmYP8sgmBfxo;-><init>(Lcom/android/keyguard/KeyguardSimPukTMOView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    const/16 p0, 0x8

    .line 207
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume(I)V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukTMOView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0

    return-void
.end method

.method public showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V
    .locals 0

    return-void
.end method

.method public showPromptReason(I)V
    .locals 0

    return-void
.end method

.method public startAppearAnimation()V
    .locals 0

    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
