.class public Lcom/android/keyguard/KeyguardSimPersoView;
.super Lcom/android/keyguard/KeyguardSecPinBasedInputView;
.source "KeyguardSimPersoView.java"

# interfaces
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso;
    }
.end annotation


# static fields
.field private static mNumRetry:I


# instance fields
.field private mCarrierLabel:Lcom/android/keyguard/CarrierText;

.field private mCheckSimPersoThread:Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso;

.field private mOrientation:I

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private volatile mSimCheckInProgress:Z

.field private mSubId:I

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSimPersoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 58
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mSimCheckInProgress:Z

    const/4 p1, 0x1

    .line 63
    iput p1, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mOrientation:I

    .line 67
    new-instance p1, Lcom/android/keyguard/KeyguardSimPersoView$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardSimPersoView$1;-><init>(Lcom/android/keyguard/KeyguardSimPersoView;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardSimPersoView;)Landroid/widget/ProgressBar;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$100()I
    .locals 1

    .line 51
    sget v0, Lcom/android/keyguard/KeyguardSimPersoView;->mNumRetry:I

    return v0
.end method

.method static synthetic access$102(I)I
    .locals 0

    .line 51
    sput p0, Lcom/android/keyguard/KeyguardSimPersoView;->mNumRetry:I

    return p0
.end method

.method static synthetic access$104()I
    .locals 1

    .line 51
    sget v0, Lcom/android/keyguard/KeyguardSimPersoView;->mNumRetry:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/keyguard/KeyguardSimPersoView;->mNumRetry:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardSimPersoView;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mSubId:I

    return p0
.end method

.method static synthetic access$302(Lcom/android/keyguard/KeyguardSimPersoView;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mSimCheckInProgress:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/keyguard/KeyguardSimPersoView;Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso;)Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mCheckSimPersoThread:Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso;

    return-object p1
.end method

.method private updateProgressBarDrawable()V
    .locals 2

    const-string v0, "background"

    .line 337
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v0

    .line 338
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 339
    sget v0, Lcom/android/keyguard/R$drawable;->keyguard_progress_material_whitebg:I

    goto :goto_0

    .line 340
    :cond_0
    sget v0, Lcom/android/keyguard/R$drawable;->keyguard_progress_material:I

    .line 338
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected getPasswordTextViewId()I
    .locals 0

    .line 114
    sget p0, Lcom/android/keyguard/R$id;->simPersoEntry:I

    return p0
.end method

.method protected getPromptReasonStringRes(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getSecurityViewId()I
    .locals 0

    .line 332
    sget p0, Lcom/android/keyguard/R$id;->keyguard_sec_sim_perso_view:I

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 141
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->onAttachedToWindow()V

    .line 142
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 144
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    const-string v1, "background"

    invoke-static {v1}, Lcom/android/systemui/widget/Util;->convertFlag(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->registerCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;I)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 171
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_1

    .line 172
    iput v1, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mOrientation:I

    .line 173
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isCenterDisplayCutOut(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 175
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mCarrierLabel:Lcom/android/keyguard/CarrierText;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/keyguard/R$dimen;->carrier_label_portrait_max_width:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_0

    .line 177
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mCarrierLabel:Lcom/android/keyguard/CarrierText;

    const p1, 0x7fffffff

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 150
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->onDetachedFromWindow()V

    .line 151
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 153
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->removeCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 119
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->onFinishInflate()V

    .line 121
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    if-eqz v0, :cond_0

    .line 122
    check-cast v0, Lcom/android/keyguard/SecPasswordTextView;

    sget v1, Lcom/android/systemui/Rune;->SECURITY_VALUE_PERSO_LOCK_PASSWORD_LENGTH:I

    invoke-virtual {v0, v1}, Lcom/android/keyguard/SecPasswordTextView;->setMaxLength(I)V

    .line 124
    :cond_0
    sget v0, Lcom/android/keyguard/R$id;->carrier_text:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/CarrierText;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mCarrierLabel:Lcom/android/keyguard/CarrierText;

    .line 125
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isCenterDisplayCutOut(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 126
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mOrientation:I

    if-ne v0, v1, :cond_1

    .line 127
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mCarrierLabel:Lcom/android/keyguard/CarrierText;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$dimen;->carrier_label_portrait_max_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_0

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mCarrierLabel:Lcom/android/keyguard/CarrierText;

    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 133
    :cond_2
    :goto_0
    sget v0, Lcom/android/keyguard/R$id;->progress:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 134
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 135
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPersoView;->updateProgressBarDrawable()V

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public resetState()V
    .locals 2

    .line 86
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->resetState()V

    const-string v0, "KeyguardSimPersoView"

    const-string v1, "Resetting state"

    .line 88
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(Lcom/android/internal/telephony/IccCardConstants$State;)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mSubId:I

    .line 92
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    if-eqz p0, :cond_1

    .line 93
    sget v0, Lcom/android/systemui/Rune;->SECURITY_VALUE_PERSO_LOCK_PASSWORD_LENGTH:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 94
    sget v0, Lcom/android/keyguard/R$string;->kg_skt_sim_perso_instructions:I

    invoke-interface {p0, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    goto :goto_0

    .line 96
    :cond_0
    sget v0, Lcom/android/keyguard/R$string;->kg_ktt_sim_perso_instructions:I

    invoke-interface {p0, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected shouldLockout(J)Z
    .locals 0

    const/4 p0, 0x0

    return p0
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

.method public updateStyle(ILandroid/app/SemWallpaperColors;)V
    .locals 0

    .line 165
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPersoView;->updateProgressBarDrawable()V

    return-void
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 5

    .line 224
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    instance-of v1, v0, Lcom/android/keyguard/SecPasswordTextView;

    if-nez v1, :cond_0

    return-void

    .line 227
    :cond_0
    check-cast v0, Lcom/android/keyguard/SecPasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/SecPasswordTextView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    .line 229
    sget-boolean v1, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_KTT_USIM_TEXT:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    sget v1, Lcom/android/keyguard/KeyguardSimPersoView;->mNumRetry:I

    const/4 v3, 0x5

    if-lt v1, v3, :cond_1

    .line 230
    invoke-virtual {p0, v2, v2}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->resetPasswordText(ZZ)V

    .line 231
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_password_perso_max_failed:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    .line 232
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    return-void

    .line 236
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 237
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v1, Lcom/android/keyguard/R$string;->kg_empty_sim_perso_hint:I

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    .line 238
    invoke-virtual {p0, v2, v2}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->resetPasswordText(ZZ)V

    .line 239
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    return-void

    .line 241
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x4

    if-ge v1, v3, :cond_4

    .line 243
    sget v0, Lcom/android/systemui/Rune;->SECURITY_VALUE_PERSO_LOCK_PASSWORD_LENGTH:I

    if-ne v0, v3, :cond_3

    .line 244
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v1, Lcom/android/keyguard/R$string;->kg_skt_sim_perso_instructions:I

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    goto :goto_0

    .line 246
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v1, Lcom/android/keyguard/R$string;->kg_ktt_sim_perso_instructions:I

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    .line 247
    :goto_0
    invoke-virtual {p0, v2, v2}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->resetPasswordText(ZZ)V

    .line 248
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    return-void

    :cond_4
    const/4 v1, 0x0

    .line 252
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->setEnabledKeypad(Z)V

    .line 253
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 254
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 256
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mCheckSimPersoThread:Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso;

    if-nez v1, :cond_5

    .line 257
    new-instance v1, Lcom/android/keyguard/KeyguardSimPersoView$2;

    invoke-direct {v1, p0, v0}, Lcom/android/keyguard/KeyguardSimPersoView$2;-><init>(Lcom/android/keyguard/KeyguardSimPersoView;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mCheckSimPersoThread:Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso;

    .line 312
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mSimCheckInProgress:Z

    if-nez v0, :cond_5

    .line 313
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mSimCheckInProgress:Z

    .line 314
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mCheckSimPersoThread:Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_5
    return-void
.end method
