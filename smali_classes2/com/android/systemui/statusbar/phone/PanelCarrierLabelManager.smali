.class public Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;
.super Ljava/lang/Object;
.source "PanelCarrierLabelManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/PanelCarrierLabelInterface;
.implements Lcom/android/systemui/slimindicator/SlimIndicatorViewSubscriber;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelViewBase;,
        Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelParent;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field protected mCurrentHeight:I

.field protected mInsetNavigationBarBottomHeight:I

.field private mIsFadingIn:Z

.field private mIsFadingOut:Z

.field private mLabelView:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelViewBase;

.field private mLastDensityDpi:I

.field private mLastOrientation:I

.field private mLastSemMobileKeyboardCovered:I

.field private mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private mPreviousVisible:Z

.field private mPrvAlpha:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "persist.log.seclevel"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 63
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mLastDensityDpi:I

    .line 64
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mLastOrientation:I

    .line 65
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mLastSemMobileKeyboardCovered:I

    const/4 v0, 0x0

    .line 119
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mPreviousVisible:Z

    const/high16 v1, -0x40800000    # -1.0f

    .line 143
    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mPrvAlpha:F

    .line 207
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mCurrentHeight:I

    .line 234
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mInsetNavigationBarBottomHeight:I

    if-eqz p1, :cond_0

    .line 69
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mContext:Landroid/content/Context;

    .line 70
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    :cond_0
    return-void
.end method

.method private IsAnimationJustFinished(F)Z
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    .line 173
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private IsAnimationJustStarted(F)Z
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    .line 170
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private attachPanelCarrierLabelView()V
    .locals 6

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const-string v1, "PanelCarrierLabelManager"

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getPanelCarrierLabelParent()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 91
    :cond_0
    sget-boolean v0, Lcom/android/systemui/Rune;->STATBAR_SUPPORT_NOTIFICATION_PANEL_PLMN_ZVV:Z

    const/4 v2, 0x0

    const/4 v3, -0x2

    const/4 v4, -0x1

    if-eqz v0, :cond_2

    .line 92
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "attachPanelCarrierLabelView(ZVV)"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->sec_panel_carrier_label_zvv_view:I

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelZVVView;

    .line 95
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v4, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getPanelCarrierLabelParent()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 97
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mLabelView:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelViewBase;

    goto :goto_0

    .line 99
    :cond_2
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "attachPanelCarrierLabelView(COMMON)"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_3
    new-instance v0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelCommonView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelCommonView;-><init>(Landroid/content/Context;)V

    .line 101
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v4, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x11

    .line 102
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 103
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getPanelCarrierLabelParent()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 105
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mLabelView:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelViewBase;

    :goto_0
    return-void

    .line 88
    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attachPanelCarrierLabelView() - but panel parent view is null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private compareFadingInAndOut(FF)Z
    .locals 3

    .line 179
    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->IsAnimationJustFinished(F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-lez v0, :cond_1

    .line 183
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mIsFadingIn:Z

    .line 184
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mIsFadingOut:Z

    goto :goto_1

    .line 186
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mIsFadingIn:Z

    .line 187
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mIsFadingOut:Z

    goto :goto_1

    .line 180
    :cond_2
    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mIsFadingIn:Z

    .line 181
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mIsFadingOut:Z

    .line 189
    :goto_1
    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    return v1
.end method

.method private isFadingAnimationRunning()Z
    .locals 1

    .line 192
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mIsFadingIn:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mIsFadingOut:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private updateLayoutParamHeight()V
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelCarrierLabelManager$I-In3T5419yC56xrFCvMHWCwaGE;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelCarrierLabelManager$I-In3T5419yC56xrFCvMHWCwaGE;-><init>(Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 4

    const-string v0, "PanelCarrierLabelManager============"

    .line 297
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "        mInsetNavigationBarBottomHeight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mInsetNavigationBarBottomHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getPanelCarrierLabelParent()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "        parentAlpha:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "        parentVisibility:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " (V0-I4-G8)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "        parentHeight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "        parentPaddingBottom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mLabelView:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelViewBase;

    if-eqz v0, :cond_1

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "        childTextView:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mLabelView:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelViewBase;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelViewBase;->getDumpText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected hasNavBarHeight(I)Z
    .locals 0

    if-lez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected hasNoNavBarHeightButGesture(I)Z
    .locals 1

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    return p0

    :cond_0
    const/4 p1, 0x0

    .line 255
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_1

    .line 256
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    :cond_1
    if-eqz p1, :cond_2

    .line 259
    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarGestureProtectionEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    :cond_2
    return p0
.end method

.method public synthetic lambda$updateLabelAlphaVisibility$1$PanelCarrierLabelManager()V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getPanelCarrierLabelParent()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mPrvAlpha:F

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$updateLabelVisibility$0$PanelCarrierLabelManager(Z)V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getPanelCarrierLabelParent()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 136
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->isFadingAnimationRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_2

    .line 137
    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mPreviousVisible:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public synthetic lambda$updateLayoutParamHeight$2$PanelCarrierLabelManager()V
    .locals 5

    .line 210
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getPanelCarrierLabelParent()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 212
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 213
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mInsetNavigationBarBottomHeight:I

    .line 214
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mLabelView:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelViewBase;

    if-eqz v3, :cond_0

    .line 215
    invoke-interface {v3}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelViewBase;->getDefaultHeight()I

    move-result v3

    add-int/2addr v2, v3

    .line 217
    :cond_0
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v3, v2, :cond_2

    .line 218
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 219
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->DEBUG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateLayoutParamHeight() newHeight:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PanelCarrierLabelManager"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_1
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mCurrentHeight:I

    .line 221
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method public synthetic lambda$updateNavBarHeight$3$PanelCarrierLabelManager(Landroid/view/ViewGroup;)V
    .locals 1

    .line 242
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mInsetNavigationBarBottomHeight:I

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, p0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 78
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->attachPanelCarrierLabelView()V

    .line 79
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->registerPanelCarrierLabelManager(Lcom/android/systemui/statusbar/phone/PanelCarrierLabelInterface;)V

    .line 80
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->updateLayoutParamHeight()V

    .line 82
    const-class v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    const-string v1, "PanelCarrierLabelManager"

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->registerSubscriber(Ljava/lang/String;Lcom/android/systemui/slimindicator/SlimIndicatorViewSubscriber;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 110
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->unregisterPanelCarrierLabelManager()V

    .line 111
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getPanelCarrierLabelParent()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getPanelCarrierLabelParent()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 115
    :cond_0
    const-class p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    const-string v0, "PanelCarrierLabelManager"

    invoke-virtual {p0, v0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->unregisterSubscriber(Ljava/lang/String;)V

    return-void
.end method

.method public onPanelConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 197
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mLastOrientation:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mLastDensityDpi:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mLastSemMobileKeyboardCovered:I

    iget v1, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-eq v0, v1, :cond_1

    .line 200
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mLastOrientation:I

    .line 201
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mLastDensityDpi:I

    .line 202
    iget p1, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mLastSemMobileKeyboardCovered:I

    .line 203
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->updateLayoutParamHeight()V

    :cond_1
    return-void
.end method

.method public setTextForCommon(Ljava/lang/String;)V
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mLabelView:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelViewBase;

    if-eqz v0, :cond_1

    .line 273
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTextForCommon(text:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanelCarrierLabelManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mLabelView:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelViewBase;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelViewBase;->setLabelText(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setTextForSlot1(Ljava/lang/String;)V
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mLabelView:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelViewBase;

    if-eqz v0, :cond_1

    .line 281
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTextForSlot1(text:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanelCarrierLabelManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mLabelView:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelViewBase;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelViewBase;->setLabelSlot1Text(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setTextForSlot2(Ljava/lang/String;)V
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mLabelView:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelViewBase;

    if-eqz v0, :cond_1

    .line 289
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTextForSlot2(text:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanelCarrierLabelManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mLabelView:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelViewBase;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelViewBase;->setLabelSlot2Text(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public updateLabelAlphaVisibility(F)V
    .locals 9

    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getMaxPanelHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const v1, 0x3f99999a    # 1.2f

    mul-float/2addr p1, v1

    const v1, 0x3e4ccccd    # 0.2f

    sub-float/2addr p1, v1

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    const-wide v3, 0x400921fa00000000L    # 3.141590118408203

    sub-float/2addr v0, p1

    float-to-double v5, v0

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    .line 151
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double v3, v5, v3

    mul-double/2addr v3, v1

    sub-double/2addr v5, v3

    double-to-float v1, v5

    .line 154
    :goto_0
    iget p1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mPrvAlpha:F

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->IsAnimationJustStarted(F)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->IsAnimationJustFinished(F)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    .line 155
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->updateLabelVisibility(Z)V

    .line 157
    :cond_2
    iget p1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mPrvAlpha:F

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->compareFadingInAndOut(FF)Z

    move-result p1

    if-nez p1, :cond_3

    .line 158
    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mPrvAlpha:F

    .line 159
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelCarrierLabelManager$zpXVCUeB4fnp0HzK5veplmxtu34;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelCarrierLabelManager$zpXVCUeB4fnp0HzK5veplmxtu34;-><init>(Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method public updateLabelVisibility()V
    .locals 1

    const/4 v0, 0x0

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->updateLabelVisibility(Z)V

    return-void
.end method

.method protected updateLabelVisibility(Z)V
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->needsAntiFalsing()Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mLastOrientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    :cond_0
    const-class v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    .line 127
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->isPanelCarrierDisabled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iget v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 128
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getOverExpansionAmount()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 130
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mPreviousVisible:Z

    if-ne v1, v0, :cond_3

    if-eqz p1, :cond_4

    .line 133
    :cond_3
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mPreviousVisible:Z

    .line 134
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelCarrierLabelManager$Rf6D5h58_6HR6uf8vW1G-tNXNKM;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelCarrierLabelManager$Rf6D5h58_6HR6uf8vW1G-tNXNKM;-><init>(Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method

.method public updateNavBarHeight(I)V
    .locals 3

    .line 236
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getPanelCarrierLabelParent()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 238
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mInsetNavigationBarBottomHeight:I

    if-eq v1, p1, :cond_2

    .line 239
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->hasNavBarHeight(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->hasNoNavBarHeightButGesture(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 240
    :cond_1
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mInsetNavigationBarBottomHeight:I

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNavBarHeight(navHeight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") mInsetNavigationBarBottomHeight:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mInsetNavigationBarBottomHeight:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PanelCarrierLabelManager"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    new-instance p1, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelCarrierLabelManager$9wmkCza0nzM0J6u6b_vEsLDyNu8;

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelCarrierLabelManager$9wmkCza0nzM0J6u6b_vEsLDyNu8;-><init>(Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 243
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->updateLayoutParamHeight()V

    :cond_2
    return-void
.end method

.method public updateQuickStarStyle()V
    .locals 0

    .line 334
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->updateLabelVisibility()V

    return-void
.end method
