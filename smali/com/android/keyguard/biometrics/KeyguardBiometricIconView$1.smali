.class Lcom/android/keyguard/biometrics/KeyguardBiometricIconView$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardBiometricIconView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricAuthFailed(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1

    .line 102
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;

    invoke-virtual {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->updateIconVisibility()V

    .line 103
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->access$000(Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;)Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$string;->kg_iris_no_match:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->updateErrorText(Ljava/lang/String;)V

    return-void
.end method

.method public onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    .line 196
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 197
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 3

    .line 108
    sget-object v0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView$2;->$SwitchMap$android$hardware$biometrics$BiometricSourceType:[I

    invoke-virtual {p3}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p3, v0, :cond_7

    const/4 v2, 0x2

    if-eq p3, v2, :cond_4

    const/4 v2, 0x3

    if-eq p3, v2, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 p3, 0x7

    if-eq p1, p3, :cond_3

    const/16 p3, 0x9

    if-ne p1, p3, :cond_1

    goto :goto_0

    .line 146
    :cond_1
    iget-object p3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;

    invoke-virtual {p3}, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->updateIconVisibility()V

    .line 147
    iget-object p3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;

    invoke-virtual {p3, p2}, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->updateErrorText(Ljava/lang/String;)V

    .line 148
    sget-boolean p2, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_BIOMETRICS_TABLET:Z

    if-eqz p2, :cond_a

    iget-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;

    iget-boolean p3, p2, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->mBouncerShowing:Z

    if-eqz p3, :cond_a

    .line 149
    invoke-static {p2}, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->access$100(Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;)Landroid/view/Display;

    move-result-object p2

    if-eqz p2, :cond_a

    const/16 p2, 0xb

    if-ne p1, p2, :cond_a

    .line 152
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->access$100(Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;)Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result p1

    if-eq p1, v0, :cond_2

    if-ne p1, v2, :cond_a

    .line 154
    :cond_2
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;

    invoke-virtual {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->handleHideGuidePopup()V

    .line 155
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;

    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->handleShowGuidePopup()V

    goto :goto_2

    .line 141
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;

    iput v1, p1, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->mState:I

    .line 142
    invoke-virtual {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->updateIconVisibility()V

    .line 143
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;

    invoke-virtual {p0, p2}, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->updateErrorText(Ljava/lang/String;)V

    return-void

    :cond_4
    const/16 p3, 0x8

    if-eq p1, p3, :cond_6

    const/16 p3, 0x13

    if-eq p1, p3, :cond_6

    const/16 p3, 0xe

    if-ne p1, p3, :cond_5

    goto :goto_1

    .line 131
    :cond_5
    iget-object p3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;

    invoke-virtual {p3}, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->updateIconVisibility()V

    .line 132
    iget-object p3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;

    invoke-virtual {p3, p2}, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->updateErrorText(Ljava/lang/String;)V

    const/16 p2, 0xc

    if-ne p1, p2, :cond_a

    .line 134
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;

    invoke-virtual {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->handleHideGuidePopup()V

    .line 135
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;

    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->handleShowGuidePopup()V

    goto :goto_2

    .line 126
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;

    iput v1, p1, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->mState:I

    .line 127
    invoke-virtual {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->updateIconVisibility()V

    .line 128
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;

    invoke-virtual {p0, p2}, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->updateErrorText(Ljava/lang/String;)V

    return-void

    :cond_7
    const/16 p3, 0x2715

    if-eq p1, p3, :cond_b

    const/16 p3, 0x2713

    if-ne p1, p3, :cond_8

    goto :goto_3

    .line 117
    :cond_8
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_9

    .line 118
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;

    invoke-virtual {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->updateIconVisibility()V

    .line 120
    :cond_9
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;

    invoke-virtual {p0, p2}, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->updateErrorText(Ljava/lang/String;)V

    :cond_a
    :goto_2
    return-void

    .line 112
    :cond_b
    :goto_3
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;

    iput v1, p1, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->mState:I

    .line 113
    invoke-virtual {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->updateIconVisibility()V

    .line 114
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->updateErrorText(Ljava/lang/String;)V

    return-void
.end method

.method public onBiometricHelp(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1

    .line 203
    sget-object v0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView$2;->$SwitchMap$android$hardware$biometrics$BiometricSourceType:[I

    invoke-virtual {p3}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x3

    if-eq p3, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p3, 0xa

    if-ne p1, p3, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 211
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;

    const/4 p2, 0x1

    iput p2, p1, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->mState:I

    const-string p2, ""

    .line 212
    invoke-virtual {p1, p2}, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->updateHelpText(Ljava/lang/String;)V

    .line 213
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;

    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->updateIconVisibility()V

    goto :goto_0

    .line 215
    :cond_2
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;

    iput v0, p1, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->mState:I

    .line 216
    invoke-virtual {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->updateIconVisibility()V

    .line 217
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->updateHelpText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onBiometricLockoutChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 247
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 248
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 251
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;

    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->updateIconVisibility()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 2

    .line 166
    sget-object v0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView$2;->$SwitchMap$android$hardware$biometrics$BiometricSourceType:[I

    invoke-virtual {p2}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p2, v0, :cond_3

    if-eq p2, v1, :cond_0

    const/4 v0, 0x3

    if-eq p2, v0, :cond_3

    goto :goto_0

    .line 179
    :cond_0
    iget-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;

    invoke-virtual {p2}, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->getIconState()I

    move-result v0

    iput v0, p2, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->mState:I

    .line 180
    iget-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;

    iget v0, p2, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->mState:I

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_1

    .line 181
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5

    .line 182
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->updateErrorText(Ljava/lang/String;)V

    .line 183
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;

    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->updateIconVisibility()V

    goto :goto_0

    .line 186
    :cond_2
    invoke-virtual {p2}, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->updateIconVisibility()V

    goto :goto_0

    .line 169
    :cond_3
    iget-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;

    invoke-virtual {p2}, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->getIconState()I

    move-result v0

    iput v0, p2, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->mState:I

    .line 170
    iget-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;

    iget v0, p2, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->mState:I

    if-ne v0, v1, :cond_4

    if-eqz p1, :cond_5

    .line 171
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5

    .line 172
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;

    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->updateIconVisibility()V

    goto :goto_0

    .line 175
    :cond_4
    invoke-virtual {p2}, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->updateIconVisibility()V

    :cond_5
    :goto_0
    return-void
.end method

.method public onFailedUnlockAttemptChanged()V
    .locals 3

    .line 226
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;

    invoke-static {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->access$200(Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 227
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    .line 226
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v0

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailedUnlockAttemptChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyguardBiometricIconView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-le v0, v1, :cond_1

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;

    .line 230
    invoke-static {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->access$300(Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;)Lcom/android/systemui/KnoxStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v0

    if-nez v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 232
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;

    iget-boolean v1, v0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->mBouncerShowing:Z

    if-eq v1, p1, :cond_0

    .line 85
    iput-boolean p1, v0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->mBouncerShowing:Z

    :cond_0
    if-eqz p1, :cond_1

    .line 88
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;

    invoke-virtual {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->updateLayout()V

    .line 89
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;

    invoke-virtual {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->updateIconVisibility()V

    .line 90
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->updateHelpText(Ljava/lang/String;)V

    .line 91
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;

    invoke-virtual {p1, v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->updateErrorText(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    .line 94
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 97
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;

    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->updateVisualCueIcon()V

    return-void
.end method

.method public onStartedWakingUp()V
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;

    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->updateIconVisibility()V

    return-void
.end method

.method public onStrongAuthStateChanged(I)V
    .locals 0

    .line 257
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->access$200(Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 258
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;

    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->updateIconVisibility()V

    :cond_0
    return-void
.end method

.method public onSystemDialogsShowing()V
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 240
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onTrustChanged(I)V
    .locals 1

    .line 264
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;

    iget-boolean v0, p1, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->mBouncerShowing:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 265
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method
