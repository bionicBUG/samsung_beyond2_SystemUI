.class Lcom/android/keyguard/KeyguardSecSimPukView$SecStateMachine;
.super Lcom/android/keyguard/KeyguardSimPukView$StateMachine;
.source "KeyguardSecSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecSimPukView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SecStateMachine"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecSimPukView;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/KeyguardSecSimPukView;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPukView$SecStateMachine;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;-><init>(Lcom/android/keyguard/KeyguardSimPukView;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecSimPukView;Lcom/android/keyguard/KeyguardSecSimPukView$1;)V
    .locals 0

    .line 149
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecSimPukView$SecStateMachine;-><init>(Lcom/android/keyguard/KeyguardSecSimPukView;)V

    return-void
.end method


# virtual methods
.method public next()V
    .locals 7

    .line 155
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_b

    if-eq v0, v4, :cond_4

    if-eq v0, v2, :cond_0

    move v0, v3

    goto/16 :goto_0

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView$SecStateMachine;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecSimPukView;->confirmPin()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    .line 210
    iput v0, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 211
    sget v0, Lcom/android/keyguard/R$string;->keyguard_sim_unlock_progress_dialog_message:I

    .line 212
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecSimPukView$SecStateMachine;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    invoke-virtual {v5, v3}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->setEnabledKeypad(Z)V

    .line 213
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecSimPukView$SecStateMachine;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 214
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecSimPukView$SecStateMachine;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardSecSimPukView;->access$100(Lcom/android/keyguard/KeyguardSecSimPukView;)Landroid/widget/ProgressBar;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 215
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecSimPukView$SecStateMachine;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardSecSimPukView;->updateSim()V

    goto/16 :goto_0

    .line 217
    :cond_1
    iput v4, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 218
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_KOR_USIM_TEXT:Z

    if-eqz v0, :cond_3

    .line 219
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView$SecStateMachine;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->getPasswordText()[B

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_2

    .line 220
    sget v0, Lcom/android/keyguard/R$string;->kg_empty_sim_perso_hint:I

    goto/16 :goto_0

    .line 222
    :cond_2
    sget v0, Lcom/android/keyguard/R$string;->kg_kor_invalid_confirm_pin_hint:I

    goto/16 :goto_0

    .line 225
    :cond_3
    sget v0, Lcom/android/keyguard/R$string;->kg_invalid_confirm_pin_hint:I

    goto/16 :goto_0

    .line 183
    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView$SecStateMachine;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecSimPukView;->checkPin()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 184
    iput v2, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 185
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_KOR_USIM_TEXT:Z

    if-eqz v0, :cond_5

    .line 186
    sget v0, Lcom/android/keyguard/R$string;->kg_kor_enter_confirm_pin_hint:I

    goto/16 :goto_0

    .line 187
    :cond_5
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_USE_CDMA_CARD_TEXT:Z

    if-eqz v0, :cond_6

    .line 188
    sget v0, Lcom/android/keyguard/R$string;->kg_ctc_enter_confirm_pin_hint:I

    goto :goto_0

    .line 190
    :cond_6
    sget-boolean v0, Lcom/android/systemui/Rune;->LOCKUI_SUPPORT_HELP_TEXT:Z

    if-eqz v0, :cond_7

    .line 191
    sget v0, Lcom/android/keyguard/R$string;->kg_sec_puk_enter_confirm_pin_hint:I

    goto :goto_0

    .line 193
    :cond_7
    sget v0, Lcom/android/keyguard/R$string;->kg_enter_confirm_pin_hint:I

    goto :goto_0

    .line 197
    :cond_8
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_KOR_USIM_TEXT:Z

    if-eqz v0, :cond_a

    .line 198
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView$SecStateMachine;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->getPasswordText()[B

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_9

    .line 199
    sget v0, Lcom/android/keyguard/R$string;->kg_empty_sim_perso_hint:I

    goto :goto_0

    .line 201
    :cond_9
    sget v0, Lcom/android/keyguard/R$string;->kg_kor_sim_pin_instructions:I

    goto :goto_0

    .line 204
    :cond_a
    sget v0, Lcom/android/keyguard/R$string;->kg_invalid_sim_pin_hint:I

    goto :goto_0

    .line 157
    :cond_b
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView$SecStateMachine;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecSimPukView;->checkPuk()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 158
    iput v4, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 159
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_KOR_USIM_TEXT:Z

    if-eqz v0, :cond_c

    .line 160
    sget v0, Lcom/android/keyguard/R$string;->kg_kor_puk_enter_pin_hint:I

    goto :goto_0

    .line 161
    :cond_c
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_USE_CDMA_CARD_TEXT:Z

    if-eqz v0, :cond_d

    .line 162
    sget v0, Lcom/android/keyguard/R$string;->kg_ctc_puk_enter_pin_hint:I

    goto :goto_0

    .line 164
    :cond_d
    sget-boolean v0, Lcom/android/systemui/Rune;->LOCKUI_SUPPORT_HELP_TEXT:Z

    if-eqz v0, :cond_e

    .line 165
    sget v0, Lcom/android/keyguard/R$string;->kg_sec_puk_enter_pin_hint:I

    goto :goto_0

    .line 167
    :cond_e
    sget v0, Lcom/android/keyguard/R$string;->kg_puk_enter_pin_hint:I

    goto :goto_0

    .line 171
    :cond_f
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_KOR_USIM_TEXT:Z

    if-eqz v0, :cond_11

    .line 172
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView$SecStateMachine;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->getPasswordText()[B

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_10

    .line 173
    sget v0, Lcom/android/keyguard/R$string;->kg_kor_empty_sim_puk_hint:I

    goto :goto_0

    .line 175
    :cond_10
    sget v0, Lcom/android/keyguard/R$string;->kg_kor_invalid_sim_puk_hint:I

    goto :goto_0

    .line 178
    :cond_11
    sget v0, Lcom/android/keyguard/R$string;->kg_invalid_sim_puk_hint:I

    .line 230
    :goto_0
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecSimPukView$SecStateMachine;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    invoke-virtual {v5, v4, v4}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->resetPasswordText(ZZ)V

    if-eqz v0, :cond_13

    .line 232
    sget v5, Lcom/android/keyguard/R$string;->kg_invalid_sim_pin_hint:I

    if-eq v0, v5, :cond_12

    .line 233
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPukView$SecStateMachine;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {p0, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    goto :goto_1

    .line 235
    :cond_12
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPukView$SecStateMachine;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecSimPukView;->access$400(Lcom/android/keyguard/KeyguardSecSimPukView;)Landroid/content/Context;

    move-result-object p0

    sget v5, Lcom/android/keyguard/R$string;->kg_invalid_sim_pin_hint:I

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-virtual {p0, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    :cond_13
    :goto_1
    return-void
.end method

.method reset()V
    .locals 2

    const-string v0, "KeyguardSimPukView"

    const-string v1, "reset()"

    .line 243
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView$SecStateMachine;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    const-string v1, ""

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSimPukView;->mPinText:Ljava/lang/String;

    .line 245
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSimPukView;->mPukText:Ljava/lang/String;

    const/4 v1, 0x0

    .line 246
    iput v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 247
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecSimPukView;->handleSubInfoChangeIfNeeded()V

    .line 248
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView$SecStateMachine;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->updateCarrierTextPadding()V

    .line 249
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPukView$SecStateMachine;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method
