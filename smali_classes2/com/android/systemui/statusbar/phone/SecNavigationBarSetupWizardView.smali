.class public Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;
.super Landroid/widget/FrameLayout;
.source "SecNavigationBarSetupWizardView.java"


# static fields
.field static final DEBUG:Z

.field private static final IS_FACTORY_BINARY:Z


# instance fields
.field private mBackAltRipple:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

.field private mBackRipple:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mHints:I

.field private mImeBtn:Landroid/widget/ImageView;

.field private mImeBtnLayout:Landroid/widget/LinearLayout;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mPrevBtn:Landroid/widget/ImageView;

.field private mPrevBtnLayout:Landroid/widget/LinearLayout;

.field private mSetupWizardView:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    sput-boolean v1, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->DEBUG:Z

    .line 48
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->IS_FACTORY_BINARY:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    .line 54
    iput p2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mHints:I

    .line 61
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mContext:Landroid/content/Context;

    .line 62
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private inflateLayout()V
    .locals 3

    .line 93
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/systemui/R$layout;->sec_navigation_setup_wizard_bar:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mSetupWizardView:Landroid/widget/FrameLayout;

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mSetupWizardView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private sendEvent(III)V
    .locals 6

    .line 99
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->sendEvent(IIIJ)V

    return-void
.end method

.method private sendEvent(IIIJ)V
    .locals 14

    .line 103
    new-instance v13, Landroid/view/KeyEvent;

    or-int/lit8 v0, p3, 0x8

    or-int/lit8 v11, v0, 0x40

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/16 v12, 0x101

    move-object v0, v13

    move-wide/from16 v1, p4

    move-wide/from16 v3, p4

    move/from16 v5, p2

    move v6, p1

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 107
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v13, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void
.end method

.method private updateResources()V
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mPrevBtn:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$drawable;->ic_sysbar_back_dark:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 113
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mImeBtn:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$drawable;->ic_sysbar_back_ime_dark:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 114
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mPrevBtn:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->sec_accessibility_back:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mImeBtn:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$string;->sec_accessibility_back:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public disableBack(Z)V
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mPrevBtnLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$onFinishInflate$0$SecNavigationBarSetupWizardView(Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x4

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, v0, v0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->sendEvent(III)V

    const/4 v1, 0x1

    .line 72
    invoke-direct {p0, p1, v1, v0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->sendEvent(III)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->updateResources()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .line 67
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 68
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->inflateLayout()V

    .line 70
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$SecNavigationBarSetupWizardView$Tg6mC_M_xLI0zBrN6CKih2WtrpQ;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$SecNavigationBarSetupWizardView$Tg6mC_M_xLI0zBrN6CKih2WtrpQ;-><init>(Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;)V

    .line 75
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mSetupWizardView:Landroid/widget/FrameLayout;

    sget v2, Lcom/android/systemui/R$id;->prev_btn_area:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mPrevBtnLayout:Landroid/widget/LinearLayout;

    .line 76
    new-instance v1, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mPrevBtnLayout:Landroid/widget/LinearLayout;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;-><init>(Landroid/content/Context;Landroid/view/View;F)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mBackRipple:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    .line 77
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mPrevBtnLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mBackRipple:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 79
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mSetupWizardView:Landroid/widget/FrameLayout;

    sget v2, Lcom/android/systemui/R$id;->prev_ime_area:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mImeBtnLayout:Landroid/widget/LinearLayout;

    .line 80
    new-instance v1, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mImeBtnLayout:Landroid/widget/LinearLayout;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;-><init>(Landroid/content/Context;Landroid/view/View;F)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mBackAltRipple:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    .line 81
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mImeBtnLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mBackAltRipple:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 83
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mSetupWizardView:Landroid/widget/FrameLayout;

    sget v2, Lcom/android/systemui/R$id;->prev_btn_arrow:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mPrevBtn:Landroid/widget/ImageView;

    .line 84
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mSetupWizardView:Landroid/widget/FrameLayout;

    sget v2, Lcom/android/systemui/R$id;->ime_icon:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mImeBtn:Landroid/widget/ImageView;

    .line 86
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->updateResources()V

    .line 88
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mPrevBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mImeBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setDarkIntensity(F)V
    .locals 4

    .line 131
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$color;->navbar_icon_color_light:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 132
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$color;->navbar_icon_color_dark:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 133
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v2

    .line 134
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, p1, v0, v1}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 133
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 135
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mPrevBtn:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 136
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mImeBtn:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 137
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mBackRipple:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->setDarkIntensity(F)V

    .line 138
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mBackAltRipple:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->setDarkIntensity(F)V

    return-void
.end method

.method public setNavigationIconHints(I)V
    .locals 4

    .line 124
    iput p1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mHints:I

    const/4 v0, 0x1

    and-int/2addr p1, v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 126
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mImeBtnLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    if-eqz v0, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 127
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mPrevBtnLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
