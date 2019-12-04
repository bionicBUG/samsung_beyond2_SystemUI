.class public interface abstract Lcom/android/systemui/qscoloring/SecQSColoringPresenter;
.super Ljava/lang/Object;
.source "SecQSColoringPresenter.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/StatusBarSetupModule;


# virtual methods
.method public abstract getBlurEffectAmount()F
.end method

.method public abstract getColor(I)I
.end method

.method public abstract isBlurEffectTurnedOn()Z
.end method

.method public abstract isForceApplyBlurEffect()Z
.end method

.method public abstract isFullyPanelBackgroundOpaque()Z
.end method

.method public abstract isQSColoringTurnedOn()Z
.end method

.method public abstract onPanelHeightUpdated(ZZF)V
.end method

.method public abstract refreshAllFunctions()V
.end method

.method public abstract setAnimationOverlapped(Z)V
.end method

.method public abstract setBouncerShowing(Z)V
.end method

.method public abstract setForceApplyBlurEffect(Z)V
.end method

.method public abstract setHeightAnimator(Landroid/animation/ValueAnimator;Z)V
.end method

.method public abstract setQsExpansionAnimator(Landroid/animation/ValueAnimator;Z)V
.end method

.method public abstract updateBlurEffect(F)V
.end method

.method public abstract updateCommonColorDraw(Landroid/view/ViewGroup;)V
.end method

.method public abstract updateCommonColorDraw(Landroid/view/ViewGroup;I)V
.end method

.method public abstract updateFloatingShortcutVisibility(Z)V
.end method

.method public abstract updateIndicatorBackgroundAlpha(F)V
.end method

.method public abstract updateMirrorVisibility(Ljava/lang/Boolean;)V
.end method

.method public abstract writeSettingValue(Ljava/lang/String;I)V
.end method
