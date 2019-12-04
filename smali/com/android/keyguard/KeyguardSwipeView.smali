.class public Lcom/android/keyguard/KeyguardSwipeView;
.super Landroid/widget/FrameLayout;
.source "KeyguardSwipeView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mSwipeDoorsillDetector:Lcom/android/systemui/swipe/SwipeDoorsillDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSwipeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 38
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSwipeView;->mSwipeDoorsillDetector:Lcom/android/systemui/swipe/SwipeDoorsillDetector;

    const/4 p2, 0x1

    .line 48
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 49
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 50
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestFocus()Z

    const-string p2, "accessibility"

    .line 52
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSwipeView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 53
    new-instance p1, Lcom/android/systemui/swipe/SwipeDoorsillDetector;

    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/keyguard/KeyguardSwipeView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSwipeView$1;-><init>(Lcom/android/keyguard/KeyguardSwipeView;)V

    invoke-direct {p1, p2, v0}, Lcom/android/systemui/swipe/SwipeDoorsillDetector;-><init>(Landroid/content/Context;Lcom/android/systemui/swipe/SwipeDoorsillDetector$UnlockCallback;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSwipeView;->mSwipeDoorsillDetector:Lcom/android/systemui/swipe/SwipeDoorsillDetector;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardSwipeView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSwipeView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object p0
.end method


# virtual methods
.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public needsInput()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 85
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 86
    sget v0, Lcom/android/keyguard/R$id;->keyguard_indication_text:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    .line 87
    sget v1, Lcom/android/keyguard/R$string;->kg_swipe_active_instructions:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 88
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSwipeView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 89
    sget p0, Lcom/android/keyguard/R$string;->kg_voice_assistant_active_instructions:I

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 91
    :cond_0
    sget p0, Lcom/android/keyguard/R$string;->kg_swipe_active_instructions:I

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 1

    const-string p0, "KeyguardSwipeView"

    const-string v0, "onPause()"

    .line 102
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume(I)V
    .locals 0

    const-string p0, "KeyguardSwipeView"

    const-string p1, "onResume()"

    .line 107
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSwipeView;->mSwipeDoorsillDetector:Lcom/android/systemui/swipe/SwipeDoorsillDetector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->setIntercept(Z)V

    .line 154
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSwipeView;->mSwipeDoorsillDetector:Lcom/android/systemui/swipe/SwipeDoorsillDetector;

    invoke-virtual {p0, p1}, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public reset()V
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSwipeView;->mSwipeDoorsillDetector:Lcom/android/systemui/swipe/SwipeDoorsillDetector;

    invoke-virtual {p0}, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->reset()V

    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSwipeView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

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
    .locals 2

    const/4 v0, 0x0

    .line 134
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 135
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 136
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 2

    .line 141
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x64

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    const/4 p0, 0x1

    return p0
.end method
