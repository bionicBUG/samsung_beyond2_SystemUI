.class public Lcom/android/systemui/settings/ToggleSliderView;
.super Landroid/widget/RelativeLayout;
.source "ToggleSliderView.java"

# interfaces
.implements Lcom/android/systemui/settings/ToggleSlider;


# instance fields
.field private mBrightnessAnimationBoundary:I

.field private mBrightnessAnimationNumber:I

.field private final mCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mContext:Landroid/content/Context;

.field private mDualSeekBarThreshold:I

.field private mEyeStrainDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

.field private mEyeStrainDialogEnabled:Z

.field private mHighBrightnessModeText:Landroid/widget/TextView;

.field private mIsHighBrightnessMode:Z

.field private mIsMirror:Z

.field private mIsOutdoorMode:Z

.field private mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;

.field private mMirror:Lcom/android/systemui/settings/ToggleSliderView;

.field private mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

.field private final mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

.field private mSliderDisableToast:Landroid/widget/Toast;

.field private mSliderEnabled:Z

.field private mSystemBrightnessEnabled:Z

.field private mToggle:Landroid/widget/CompoundButton;

.field private mTracking:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/settings/ToggleSliderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/settings/ToggleSliderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 89
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mIsMirror:Z

    const/4 v1, 0x1

    .line 68
    iput v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mBrightnessAnimationNumber:I

    .line 70
    iput-boolean v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mEyeStrainDialogEnabled:Z

    .line 75
    iput-boolean v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSliderEnabled:Z

    .line 76
    iput-boolean v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSystemBrightnessEnabled:Z

    .line 254
    new-instance v1, Lcom/android/systemui/settings/ToggleSliderView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/ToggleSliderView$2;-><init>(Lcom/android/systemui/settings/ToggleSliderView;)V

    iput-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 277
    new-instance v1, Lcom/android/systemui/settings/ToggleSliderView$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/ToggleSliderView$3;-><init>(Lcom/android/systemui/settings/ToggleSliderView;)V

    iput-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 91
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mContext:Landroid/content/Context;

    .line 93
    sget v1, Lcom/android/systemui/R$layout;->status_bar_toggle_slider:I

    invoke-static {p1, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 96
    sget-object v1, Lcom/android/systemui/R$styleable;->ToggleSliderView:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 99
    iget-object p2, p0, Lcom/android/systemui/settings/ToggleSliderView;->mContext:Landroid/content/Context;

    sget p3, Lcom/android/systemui/R$string;->sec_qspanel_brightness_disabled_toast_message:I

    .line 100
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 99
    invoke-static {p2, p3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSliderDisableToast:Landroid/widget/Toast;

    .line 103
    sget p2, Lcom/android/systemui/R$id;->toggle:I

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CompoundButton;

    iput-object p2, p0, Lcom/android/systemui/settings/ToggleSliderView;->mToggle:Landroid/widget/CompoundButton;

    .line 104
    iget-object p2, p0, Lcom/android/systemui/settings/ToggleSliderView;->mToggle:Landroid/widget/CompoundButton;

    iget-object p3, p0, Lcom/android/systemui/settings/ToggleSliderView;->mCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p2, p3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 106
    sget p2, Lcom/android/systemui/R$id;->slider:I

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/settings/ToggleSeekBar;

    iput-object p2, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    .line 107
    iget-object p2, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    iget-object p3, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p2, p3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 108
    iget-object p2, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    new-instance p3, Lcom/android/systemui/settings/ToggleSliderView$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/settings/ToggleSliderView$1;-><init>(Lcom/android/systemui/settings/ToggleSliderView;)V

    invoke-virtual {p2, p3}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 130
    iget-object p2, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/systemui/settings/ToggleSeekBar;->setAccessibilityLabel(Ljava/lang/String;)V

    .line 133
    sget p2, Lcom/android/systemui/R$id;->slider_hbm_text:I

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/systemui/settings/ToggleSliderView;->mHighBrightnessModeText:Landroid/widget/TextView;

    .line 136
    invoke-virtual {p0}, Lcom/android/systemui/settings/ToggleSliderView;->updateSliderColors()V

    .line 137
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/util/SettingsHelper;->isSystemBrightnessEnabled()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/systemui/settings/ToggleSliderView;->updateSystemBrightnessEnabled(Z)V

    .line 140
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/settings/ToggleSliderView;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSystemBrightnessEnabled:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/settings/ToggleSliderView;)Landroid/widget/Toast;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSliderDisableToast:Landroid/widget/Toast;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/settings/ToggleSliderView;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mIsMirror:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/settings/ToggleSliderView;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mDualSeekBarThreshold:I

    return p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/settings/ToggleSliderView;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/android/systemui/settings/ToggleSliderView;->showEyeStrainDialog()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mEyeStrainDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/android/systemui/settings/ToggleSliderView;Lcom/android/systemui/statusbar/phone/SystemUIDialog;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mEyeStrainDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/systemui/settings/ToggleSliderView;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mBrightnessAnimationNumber:I

    return p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/settings/ToggleSliderView;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mBrightnessAnimationBoundary:I

    return p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/settings/ToggleSliderView;)Landroid/content/Context;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSlider$Listener;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/settings/ToggleSliderView;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mTracking:Z

    return p0
.end method

.method static synthetic access$302(Lcom/android/systemui/settings/ToggleSliderView;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mTracking:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSeekBar;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSliderView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/settings/ToggleSliderView;)Landroid/widget/CompoundButton;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mToggle:Landroid/widget/CompoundButton;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/settings/ToggleSliderView;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mIsHighBrightnessMode:Z

    return p0
.end method

.method static synthetic access$800(Lcom/android/systemui/settings/ToggleSliderView;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/android/systemui/settings/ToggleSliderView;->updateHBMVisibility(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/settings/ToggleSliderView;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mEyeStrainDialogEnabled:Z

    return p0
.end method

.method static synthetic access$902(Lcom/android/systemui/settings/ToggleSliderView;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mEyeStrainDialogEnabled:Z

    return p1
.end method

.method private getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 3

    const/4 p0, 0x1

    new-array v0, p0, [[I

    const/4 v1, 0x0

    new-array v2, v1, [I

    aput-object v2, v0, v1

    .line 400
    new-instance v2, Landroid/content/res/ColorStateList;

    new-array p0, p0, [I

    aput p1, p0, v1

    invoke-direct {v2, v0, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method private showEyeStrainDialog()V
    .locals 3

    .line 420
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mEyeStrainDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-nez v0, :cond_0

    .line 421
    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mEyeStrainDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 422
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->sec_brightness_eye_strain_dialog_message:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 423
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mEyeStrainDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 424
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mEyeStrainDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    sget v1, Lcom/android/systemui/R$string;->yes:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 425
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mEyeStrainDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    new-instance v1, Lcom/android/systemui/settings/ToggleSliderView$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/ToggleSliderView$4;-><init>(Lcom/android/systemui/settings/ToggleSliderView;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 435
    iget-object p0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mEyeStrainDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method private updateBrightnessAnimationBoundary()V
    .locals 2

    .line 381
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mBrightnessAnimationBoundary:I

    return-void
.end method

.method private updateHBMVisibility(I)V
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mHighBrightnessModeText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 453
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 455
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mHighBrightnessModeText:Landroid/widget/TextView;

    if-eqz p0, :cond_1

    .line 456
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private updateSliderEnabled(Z)V
    .locals 2

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateSliderEnabled() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSystemBrightnessEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSystemBrightnessEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ToggleSlider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 470
    iget-boolean p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSystemBrightnessEnabled:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 472
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSliderEnabled:Z

    if-eq v0, p1, :cond_1

    .line 473
    iput-boolean p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSliderEnabled:Z

    .line 474
    invoke-direct {p0}, Lcom/android/systemui/settings/ToggleSliderView;->updateSliderListener()V

    :cond_1
    return-void
.end method

.method private updateSliderListener()V
    .locals 2

    .line 479
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    if-eqz v0, :cond_1

    .line 480
    iget-boolean v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSliderEnabled:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 231
    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSliderEnabled:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 239
    :cond_0
    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isBrightnessBlocked()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    .line 242
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSystemBrightnessEnabled:Z

    if-nez v0, :cond_3

    .line 243
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_2

    .line 244
    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSliderDisableToast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p1

    if-nez p1, :cond_2

    .line 245
    iget-object p0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSliderDisableToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_2
    return v1

    :cond_3
    const/4 p0, 0x0

    return p0

    .line 232
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    if-eqz v0, :cond_5

    .line 233
    invoke-virtual {p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v0

    .line 234
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    iget-object v1, v1, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 235
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 237
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getBrightnessAnimationNumber()I
    .locals 0

    .line 385
    iget p0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mBrightnessAnimationNumber:I

    return p0
.end method

.method public getSlider()Landroid/widget/SeekBar;
    .locals 0

    .line 501
    iget-object p0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    return-object p0
.end method

.method public getValue()I
    .locals 0

    .line 217
    iget-object p0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p0

    return p0
.end method

.method public isChecked()Z
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    return p0
.end method

.method public isSliderEnabled()Z
    .locals 0

    .line 485
    iget-boolean p0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSliderEnabled:Z

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 162
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 163
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;

    if-eqz v0, :cond_0

    .line 164
    invoke-interface {v0, p0}, Lcom/android/systemui/settings/ToggleSlider$Listener;->onInit(Lcom/android/systemui/settings/ToggleSlider;)V

    :cond_0
    return-void
.end method

.method public setBrightnessAnimationNumber(I)V
    .locals 2

    .line 369
    iget v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mBrightnessAnimationBoundary:I

    mul-int/lit8 v1, v0, 0x3

    if-ge v1, p1, :cond_0

    const/4 p1, 0x4

    .line 370
    iput p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mBrightnessAnimationNumber:I

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v0, 0x2

    if-ge v1, p1, :cond_1

    const/4 p1, 0x3

    .line 372
    iput p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mBrightnessAnimationNumber:I

    goto :goto_0

    :cond_1
    if-ge v0, p1, :cond_2

    const/4 p1, 0x2

    .line 374
    iput p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mBrightnessAnimationNumber:I

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 376
    iput p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mBrightnessAnimationNumber:I

    :goto_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method

.method public setDualSeekBarResources()V
    .locals 4

    .line 389
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    if-eqz v0, :cond_0

    .line 390
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x4056800000000000L    # 90.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mDualSeekBarThreshold:I

    .line 391
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    iget v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mDualSeekBarThreshold:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V

    .line 392
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$color;->brightness_dual_slider_background_color:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 393
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$color;->brightness_dual_slider_foreground_color:I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 394
    iget-object p0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {p0, v0, v1}, Landroid/widget/SeekBar;->setDualModeOverlapColor(II)V

    :cond_0
    return-void
.end method

.method public setEnforcedAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 4

    .line 169
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mToggle:Landroid/widget/CompoundButton;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 170
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 171
    iget-object p0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {p0, p1}, Lcom/android/systemui/settings/ToggleSeekBar;->setEnforcedAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void
.end method

.method public setMax(I)V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 191
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/ToggleSliderView;->setMax(I)V

    .line 196
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/settings/ToggleSliderView;->updateBrightnessAnimationBoundary()V

    .line 197
    invoke-virtual {p0}, Lcom/android/systemui/settings/ToggleSliderView;->setDualSeekBarResources()V

    return-void
.end method

.method public setMirror(Lcom/android/systemui/settings/ToggleSliderView;)V
    .locals 1

    .line 144
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    .line 145
    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    if-eqz p1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/settings/ToggleSliderView;->setChecked(Z)V

    .line 147
    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/settings/ToggleSliderView;->setMax(I)V

    .line 148
    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/settings/ToggleSliderView;->setValue(I)V

    .line 151
    iget-object p0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mIsMirror:Z

    :cond_0
    return-void
.end method

.method public setMirrorController(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    return-void
.end method

.method public setOnChangedListener(Lcom/android/systemui/settings/ToggleSlider$Listener;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;

    return-void
.end method

.method public setValue(I)V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 204
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/ToggleSliderView;->setValue(I)V

    .line 208
    :cond_0
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_PERSONAL_AUTO_BRIGHTNESS_CONTROL:Z

    if-eqz v0, :cond_1

    .line 209
    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mIsHighBrightnessMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    if-ne p1, v0, :cond_1

    const/16 p1, 0x8

    .line 210
    invoke-direct {p0, p1}, Lcom/android/systemui/settings/ToggleSliderView;->updateHBMVisibility(I)V

    :cond_1
    return-void
.end method

.method public updateEyeStrainDialog(I)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 416
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mEyeStrainDialogEnabled:Z

    return-void
.end method

.method public updateHighBrightnessMode(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 442
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mIsHighBrightnessMode:Z

    if-eq v0, p1, :cond_1

    .line 443
    iput-boolean p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mIsHighBrightnessMode:Z

    .line 444
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateHighBrightnessMode() = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mIsHighBrightnessMode:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ToggleSlider"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-boolean p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mIsHighBrightnessMode:Z

    if-nez p1, :cond_1

    const/16 p1, 0x8

    .line 446
    invoke-direct {p0, p1}, Lcom/android/systemui/settings/ToggleSliderView;->updateHBMVisibility(I)V

    :cond_1
    return-void
.end method

.method public updateOutdoorMode(I)V
    .locals 2

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateOutdoorMode() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ToggleSlider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 463
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mIsOutdoorMode:Z

    .line 464
    iget-boolean p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mIsOutdoorMode:Z

    xor-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/android/systemui/settings/ToggleSliderView;->updateSliderEnabled(Z)V

    .line 465
    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    iget-boolean p0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mIsOutdoorMode:Z

    xor-int/2addr p0, v0

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    return-void
.end method

.method public updateSliderColors()V
    .locals 3

    .line 404
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mContext:Landroid/content/Context;

    .line 405
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$color;->brightness_slider_normal_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 404
    invoke-direct {p0, v1}, Lcom/android/systemui/settings/ToggleSliderView;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 406
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mContext:Landroid/content/Context;

    .line 407
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$color;->brightness_slider_activated_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/settings/ToggleSliderView;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 406
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 408
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mContext:Landroid/content/Context;

    .line 409
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$color;->brightness_slider_thumb_activated_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/settings/ToggleSliderView;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 408
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 411
    invoke-virtual {p0}, Lcom/android/systemui/settings/ToggleSliderView;->setDualSeekBarResources()V

    return-void
.end method

.method public updateSystemBrightnessEnabled(Z)V
    .locals 2

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateSystemBrightnessEnabled() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSliderEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSliderEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ToggleSlider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iput-boolean p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSystemBrightnessEnabled:Z

    .line 492
    iget-boolean p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSliderEnabled:Z

    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSystemBrightnessEnabled:Z

    if-eq p1, v0, :cond_0

    .line 493
    iput-boolean v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSliderEnabled:Z

    .line 494
    invoke-direct {p0}, Lcom/android/systemui/settings/ToggleSliderView;->updateSliderListener()V

    :cond_0
    return-void
.end method
