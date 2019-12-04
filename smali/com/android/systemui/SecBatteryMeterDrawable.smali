.class public Lcom/android/systemui/SecBatteryMeterDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SecBatteryMeterDrawable.java"


# instance fields
.field private mBatteryFrameDarkColor:I

.field private mBatteryFrameLightColor:I

.field private mBatteryFramePaint:Landroid/graphics/Paint;

.field private mBatteryHealth:I

.field private mBatteryLevelBackgroundDarkColor:I

.field private mBatteryLevelBackgroundLightColor:I

.field private mBatteryLevelBackgroundPaint:Landroid/graphics/Paint;

.field private mBatteryLevelColor:I

.field private mBatteryLevelPaint:Landroid/graphics/Paint;

.field private mBatteryLightningBoltDarkColor:I

.field private mBatteryLightningBoltDarkPaint:Landroid/graphics/Paint;

.field private mBatteryLightningBoltLightColor:I

.field private mBatteryLightningBoltLightPaint:Landroid/graphics/Paint;

.field private mBatteryOnline:I

.field private mBatteryStatus:I

.field private mCharging:Z

.field private mColors:[I

.field private mContext:Landroid/content/Context;

.field private mCriticalLevel:I

.field private mDarkModeBoltColor:I

.field private mFlagBlinkingNeeded:Z

.field private mFlagDrawIconTurn:Z

.field private mHeight:I

.field private mIconTint:I

.field private mIntrinsicHeight:I

.field private mIntrinsicWidth:I

.field private mInvalidString:Ljava/lang/String;

.field private mInvalidTextHeight:F

.field private mInvalidTextPaint:Landroid/graphics/Paint;

.field private mLevel:I

.field private mLightModeBoltColor:I

.field private mOldDarkIntensity:F

.field private mPluggedIn:Z

.field private mPostInvalidateHandler:Landroid/os/Handler;

.field private mWarningString:Ljava/lang/String;

.field private mWarningTextHeight:F

.field private mWarningTextPaint:Landroid/graphics/Paint;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    .line 141
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 p2, 0x0

    .line 86
    iput p2, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mLightModeBoltColor:I

    .line 87
    iput p2, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mDarkModeBoltColor:I

    const/4 v0, 0x1

    .line 91
    iput v0, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryStatus:I

    const/4 v1, -0x1

    .line 96
    iput v1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mIconTint:I

    .line 97
    iput v1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mLevel:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 101
    iput v1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mOldDarkIntensity:F

    .line 111
    iput-boolean v0, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mFlagDrawIconTurn:Z

    .line 112
    iput-boolean p2, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mFlagBlinkingNeeded:Z

    .line 114
    iput v0, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryHealth:I

    .line 116
    new-instance p2, Lcom/android/systemui/SecBatteryMeterDrawable$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/SecBatteryMeterDrawable$1;-><init>(Lcom/android/systemui/SecBatteryMeterDrawable;)V

    iput-object p2, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mPostInvalidateHandler:Landroid/os/Handler;

    const-string p2, "X"

    .line 136
    iput-object p2, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mInvalidString:Ljava/lang/String;

    .line 138
    iput v0, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryOnline:I

    .line 142
    iput-object p1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mContext:Landroid/content/Context;

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 145
    invoke-direct {p0}, Lcom/android/systemui/SecBatteryMeterDrawable;->initColors()V

    const/4 v1, 0x4

    .line 147
    iput v1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mCriticalLevel:I

    .line 149
    sget v1, Lcom/android/systemui/R$string;->battery_meter_very_low_overlay_symbol:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mWarningString:Ljava/lang/String;

    .line 150
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    const-string v1, "sans-serif"

    .line 151
    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 152
    iget-object v2, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 153
    iget-object v2, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 154
    iget-object v2, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mColors:[I

    array-length v3, v2

    if-le v3, v0, :cond_0

    .line 155
    iget-object v3, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    aget v2, v2, v0

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 158
    :cond_0
    sget-boolean v2, Lcom/android/systemui/Rune;->PWRUI_SUPPORT_INCOMPATIBLE_CHARGER_CHECK:Z

    if-eqz v2, :cond_1

    .line 159
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mInvalidTextPaint:Landroid/graphics/Paint;

    .line 160
    iget-object v2, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mInvalidTextPaint:Landroid/graphics/Paint;

    const v3, -0x17cbf7

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 161
    iget-object v2, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mInvalidTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 162
    iget-object v1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mInvalidTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 165
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/SecBatteryMeterDrawable;->loadDimens()V

    .line 168
    sget v1, Lcom/android/systemui/R$color;->status_bar_battery_frame_light_color:I

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryFrameLightColor:I

    .line 169
    sget v1, Lcom/android/systemui/R$color;->status_bar_battery_frame_dark_color:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryFrameDarkColor:I

    .line 170
    iget v1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryFrameLightColor:I

    iput v1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLevelColor:I

    .line 171
    sget v1, Lcom/android/systemui/R$color;->status_bar_battery_level_background_light_color:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLevelBackgroundLightColor:I

    .line 172
    sget v1, Lcom/android/systemui/R$color;->status_bar_battery_level_background_dark_color:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLevelBackgroundDarkColor:I

    .line 173
    sget v1, Lcom/android/systemui/R$color;->status_bar_battery_lightning_bolt_light_color:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLightningBoltLightColor:I

    .line 174
    sget v1, Lcom/android/systemui/R$color;->status_bar_battery_lightning_bolt_dark_color:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLightningBoltDarkColor:I

    .line 175
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryFramePaint:Landroid/graphics/Paint;

    .line 176
    iget-object p2, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryFramePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 177
    iget-object p2, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryFramePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryFrameLightColor:I

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 178
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLevelPaint:Landroid/graphics/Paint;

    .line 179
    iget-object p2, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLevelPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 180
    iget-object p2, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLevelPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 181
    iget-object p2, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLevelPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 182
    iget-object p2, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLevelPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryFrameLightColor:I

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 183
    iget-object p2, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLevelPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 184
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLevelBackgroundPaint:Landroid/graphics/Paint;

    .line 185
    iget-object p2, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLevelBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 186
    iget-object p2, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLevelBackgroundPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLevelBackgroundLightColor:I

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 187
    iget-object p2, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLevelBackgroundPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 188
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLightningBoltDarkPaint:Landroid/graphics/Paint;

    .line 189
    iget-object p2, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLightningBoltDarkPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 190
    iget-object p2, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLightningBoltDarkPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLightningBoltDarkColor:I

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 191
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLightningBoltLightPaint:Landroid/graphics/Paint;

    .line 192
    iget-object p2, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLightningBoltLightPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 193
    iget-object p2, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLightningBoltLightPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLightningBoltLightColor:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 195
    sget p2, Lcom/android/systemui/R$color;->batterymeter_bolt_color:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mLightModeBoltColor:I

    .line 196
    sget p2, Lcom/android/systemui/R$color;->batterymeter_bolt_color_light:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mDarkModeBoltColor:I

    .line 198
    const-class p1, Lcom/android/systemui/KnoxStateMonitor;

    .line 199
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {p1}, Lcom/android/systemui/KnoxStateMonitor;->getBatteryLevelColourItem()Lcom/samsung/android/knox/custom/StatusbarIconItem;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 200
    invoke-virtual {p0}, Lcom/android/systemui/SecBatteryMeterDrawable;->updateStatusBarBatteryColour()V

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/SecBatteryMeterDrawable;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mFlagBlinkingNeeded:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/SecBatteryMeterDrawable;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mFlagDrawIconTurn:Z

    return p0
.end method

.method static synthetic access$102(Lcom/android/systemui/SecBatteryMeterDrawable;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mFlagDrawIconTurn:Z

    return p1
.end method

.method private getColorForDarkIntensity(FII)I
    .locals 0

    .line 469
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private getColorForLevel(I)I
    .locals 4

    .line 400
    iget-boolean v0, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mPluggedIn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mCharging:Z

    if-eqz v0, :cond_0

    .line 401
    iget p0, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLevelColor:I

    return p0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 406
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mColors:[I

    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 407
    aget v1, v2, v0

    add-int/lit8 v3, v0, 0x1

    .line 408
    aget v3, v2, v3

    if-gt p1, v1, :cond_2

    .line 411
    array-length p1, v2

    add-int/lit8 p1, p1, -0x2

    if-ne v0, p1, :cond_1

    .line 412
    iget v1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mIconTint:I

    goto :goto_1

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x2

    move v1, v3

    goto :goto_0

    .line 419
    :cond_3
    :goto_1
    const-class p1, Lcom/android/systemui/KnoxStateMonitor;

    .line 420
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {p1}, Lcom/android/systemui/KnoxStateMonitor;->getBatteryLevelColourItem()Lcom/samsung/android/knox/custom/StatusbarIconItem;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 421
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Knox change color of statusbar battery !! color = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SecBatteryMeterDrawable"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 426
    :cond_4
    iget p1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mIconTint:I

    if-ne v1, p1, :cond_5

    iget v1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLevelColor:I

    :cond_5
    return v1
.end method

.method private getLinearGradientDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;IIFLandroid/graphics/LinearGradient;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 6

    .line 431
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    const/high16 p0, -0x1000000

    .line 432
    invoke-virtual {v5, p0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p0, 0x0

    .line 433
    invoke-virtual {v5, p0}, Landroid/graphics/Paint;->setDither(Z)V

    const/high16 v0, 0x41200000    # 10.0f

    .line 434
    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 435
    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 436
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 437
    invoke-virtual {v5, p6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 439
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 440
    invoke-virtual {p6, v0}, Landroid/graphics/LinearGradient;->getLocalMatrix(Landroid/graphics/Matrix;)Z

    int-to-float v3, p3

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, v3, v1

    int-to-float v4, p4

    div-float v1, v4, v1

    .line 441
    invoke-virtual {v0, p5, v2, v1}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 442
    invoke-virtual {p6, v0}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 443
    invoke-virtual {p2, p0, p0, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 445
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 446
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 447
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 448
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 450
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p2
.end method

.method private initColors()V
    .locals 9

    .line 205
    iget-object v0, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 206
    sget v1, Lcom/android/systemui/R$array;->batterymeter_color_levels:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 207
    sget v2, Lcom/android/systemui/R$array;->batterymeter_color_values:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 208
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    mul-int/lit8 v3, v2, 0x2

    .line 209
    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mColors:[I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    .line 211
    iget-object v5, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mColors:[I

    mul-int/lit8 v6, v4, 0x2

    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    aput v7, v5, v6

    .line 212
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v5

    const/4 v7, 0x2

    if-ne v5, v7, :cond_0

    .line 213
    iget-object v5, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mColors:[I

    add-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getThemeAttributeId(II)I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v7

    aput v7, v5, v6

    goto :goto_1

    .line 215
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mColors:[I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    aput v7, v5, v6

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 218
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 219
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private loadDimens()V
    .locals 3

    .line 553
    iget-object v0, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->status_bar_battery_icon_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mIntrinsicWidth:I

    .line 554
    iget-object v0, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->status_bar_battery_icon_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mIntrinsicHeight:I

    .line 556
    const-class v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    .line 557
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->shouldBeScaleLogicApplied()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    const-class v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->getScaleModel()Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 560
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;->getRatio()F

    move-result v0

    .line 561
    iget v1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mIntrinsicWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mIntrinsicWidth:I

    .line 562
    iget v1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mIntrinsicHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mIntrinsicHeight:I

    .line 566
    :cond_0
    iget v0, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mIntrinsicWidth:I

    iget v1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mIntrinsicHeight:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/android/systemui/SecBatteryMeterDrawable;->setBounds(IIII)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 26

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 241
    iget v0, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryStatus:I

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v9, 0x0

    if-ne v0, v2, :cond_2

    iget v0, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryHealth:I

    if-eq v0, v1, :cond_0

    const/4 v4, 0x7

    if-eq v0, v4, :cond_0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_0

    const/4 v4, 0x6

    if-ne v0, v4, :cond_2

    .line 246
    :cond_0
    iput-boolean v3, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mFlagBlinkingNeeded:Z

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "battery icon blink for battery health... mFlagDrawIconTurn:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mFlagDrawIconTurn:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "SecBatteryMeterDrawable"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v0, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mPostInvalidateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 251
    iget-object v0, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mPostInvalidateHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 253
    :cond_1
    iget-boolean v0, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mFlagDrawIconTurn:Z

    if-nez v0, :cond_3

    return-void

    .line 257
    :cond_2
    iput-boolean v9, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mFlagBlinkingNeeded:Z

    .line 262
    :cond_3
    sget-boolean v0, Lcom/android/systemui/Rune;->PWRUI_SUPPORT_INCOMPATIBLE_CHARGER_CHECK:Z

    if-eqz v0, :cond_4

    iget v0, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryOnline:I

    if-nez v0, :cond_4

    move v0, v9

    goto :goto_0

    .line 266
    :cond_4
    iget v0, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mLevel:I

    :goto_0
    const/4 v4, -0x1

    if-ne v0, v4, :cond_5

    return-void

    .line 272
    :cond_5
    iget-object v4, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$drawable;->stat_sys_battery_over_95:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 273
    iget-object v5, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getColor()I

    move-result v5

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v5, v10}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 274
    iget v5, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mWidth:I

    iget v10, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mHeight:I

    invoke-virtual {v4, v9, v9, v5, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/16 v5, 0x66

    const/16 v10, 0xff

    const/16 v11, 0x60

    if-ge v0, v11, :cond_6

    .line 276
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1

    .line 278
    :cond_6
    invoke-virtual {v4, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 280
    :goto_1
    iget-object v12, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/android/systemui/R$drawable;->stat_sys_battery_under_15:I

    invoke-virtual {v12, v13, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 281
    iget v13, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mCriticalLevel:I

    if-le v0, v13, :cond_7

    invoke-direct {v7, v0}, Lcom/android/systemui/SecBatteryMeterDrawable;->getColorForLevel(I)I

    move-result v13

    goto :goto_2

    :cond_7
    iget-object v13, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v13}, Landroid/graphics/Paint;->getColor()I

    move-result v13

    :goto_2
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 283
    iget v13, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mWidth:I

    iget v14, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mHeight:I

    invoke-virtual {v12, v9, v9, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 284
    iget v13, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mCriticalLevel:I

    if-gt v0, v13, :cond_8

    .line 285
    invoke-virtual {v12, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_3

    .line 287
    :cond_8
    invoke-virtual {v12, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 289
    :goto_3
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    .line 290
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    .line 292
    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v14, v15}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 293
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v15}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 294
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 295
    invoke-virtual {v12, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 297
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 298
    div-int/lit8 v10, v13, 0x2

    .line 299
    div-int/lit8 v3, v14, 0x2

    if-lt v0, v11, :cond_9

    const/16 v2, 0xff

    const/16 v6, 0xff

    goto :goto_5

    :cond_9
    if-ge v0, v11, :cond_a

    .line 307
    iget v6, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mCriticalLevel:I

    if-le v0, v6, :cond_a

    const/16 v2, 0xff

    goto :goto_4

    :cond_a
    const/16 v2, 0x66

    :goto_4
    const/16 v6, 0x66

    :goto_5
    move v1, v3

    move/from16 v16, v1

    :goto_6
    if-lez v1, :cond_c

    .line 315
    invoke-virtual {v15, v10, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v17

    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    if-lt v9, v6, :cond_b

    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    :cond_b
    add-int/lit8 v16, v16, -0x1

    add-int/lit8 v1, v1, -0x1

    const/4 v9, 0x0

    goto :goto_6

    :cond_c
    :goto_7
    move/from16 v1, v16

    move v9, v3

    move v11, v9

    :goto_8
    if-ge v9, v14, :cond_e

    .line 319
    invoke-virtual {v15, v10, v9}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v17

    move/from16 v18, v10

    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->alpha(I)I

    move-result v10

    if-lt v10, v2, :cond_d

    goto :goto_9

    :cond_d
    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v9, v9, 0x1

    move/from16 v10, v18

    goto :goto_8

    :cond_e
    move/from16 v18, v10

    :goto_9
    move/from16 v2, v18

    move v9, v2

    :goto_a
    if-lez v2, :cond_10

    .line 323
    invoke-virtual {v15, v2, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v10

    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    move-result v10

    if-lt v10, v6, :cond_f

    goto :goto_b

    :cond_f
    add-int/lit8 v9, v9, -0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    :cond_10
    :goto_b
    move/from16 v2, v18

    :goto_c
    if-ge v2, v13, :cond_12

    add-int/lit8 v18, v18, 0x1

    .line 328
    invoke-virtual {v15, v2, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v10

    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    move-result v10

    if-lt v10, v6, :cond_11

    goto :goto_d

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_12
    :goto_d
    move/from16 v2, v18

    .line 330
    invoke-virtual {v5, v9, v1, v2, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 332
    invoke-virtual {v4, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 333
    invoke-virtual {v12, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v3, 0x60

    if-lt v0, v3, :cond_13

    move v3, v2

    goto :goto_e

    .line 339
    :cond_13
    iget-object v3, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mColors:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    if-gt v0, v3, :cond_14

    move v3, v1

    goto :goto_e

    :cond_14
    add-int/lit8 v3, v0, -0xf

    int-to-float v3, v3

    const/high16 v4, 0x42a00000    # 80.0f

    div-float/2addr v3, v4

    .line 345
    :goto_e
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v3, v4

    .line 346
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 347
    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v3

    .line 350
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 351
    iget v10, v5, Landroid/graphics/Rect;->left:I

    iget v11, v5, Landroid/graphics/Rect;->top:I

    iget v12, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {v9, v10, v11, v12, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 352
    iget-object v10, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLevelBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 355
    iget-object v9, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLevelPaint:Landroid/graphics/Paint;

    invoke-direct {v7, v0}, Lcom/android/systemui/SecBatteryMeterDrawable;->getColorForLevel(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 356
    iget v9, v5, Landroid/graphics/Rect;->left:I

    iget v10, v5, Landroid/graphics/Rect;->right:I

    iget v11, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v9, v6, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 357
    iget-object v6, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLevelPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v4, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 360
    sget-boolean v4, Lcom/android/systemui/Rune;->PWRUI_SUPPORT_INCOMPATIBLE_CHARGER_CHECK:Z

    const v6, 0x3ef5c28f    # 0.48f

    const/high16 v9, 0x3f000000    # 0.5f

    if-eqz v4, :cond_15

    iget v4, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryOnline:I

    if-nez v4, :cond_15

    .line 362
    iget v0, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v9

    .line 363
    iget v1, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mHeight:I

    int-to-float v1, v1

    iget v2, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mInvalidTextHeight:F

    add-float/2addr v1, v2

    mul-float/2addr v1, v6

    .line 364
    iget-object v2, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mInvalidString:Ljava/lang/String;

    iget-object v3, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mInvalidTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_10

    .line 365
    :cond_15
    iget-boolean v4, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mPluggedIn:Z

    if-eqz v4, :cond_18

    iget v4, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryStatus:I

    const/4 v10, 0x5

    if-eq v4, v10, :cond_18

    const/4 v10, 0x3

    if-eq v4, v10, :cond_18

    const/4 v10, 0x4

    if-eq v4, v10, :cond_18

    .line 369
    iget-object v4, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/android/systemui/R$drawable;->stat_sys_battery_charging:I

    const/4 v9, 0x0

    invoke-virtual {v4, v6, v9}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 370
    iget-object v6, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLightningBoltLightPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getColor()I

    move-result v6

    .line 371
    iget-object v9, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLightningBoltDarkPaint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getColor()I

    move-result v9

    new-array v11, v10, [I

    .line 373
    iget v10, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mCriticalLevel:I

    if-gt v0, v10, :cond_16

    move v10, v6

    goto :goto_f

    :cond_16
    move v10, v9

    :goto_f
    const/4 v12, 0x0

    aput v10, v11, v12

    .line 374
    iget v10, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mCriticalLevel:I

    if-gt v0, v10, :cond_17

    move v9, v6

    :cond_17
    const/4 v0, 0x1

    aput v9, v11, v0

    const/4 v9, 0x2

    aput v6, v11, v9

    const/4 v10, 0x3

    aput v6, v11, v10

    const/4 v6, 0x4

    new-array v6, v6, [F

    aput v1, v6, v12

    int-to-float v1, v3

    .line 379
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v1, v3

    aput v3, v6, v0

    .line 380
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    aput v1, v6, v9

    const/4 v0, 0x3

    aput v2, v6, v0

    .line 382
    new-instance v9, Landroid/graphics/LinearGradient;

    const/16 v19, 0x0

    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    const/16 v21, 0x0

    iget v1, v5, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sget-object v25, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v18, v9

    move/from16 v20, v0

    move/from16 v22, v1

    move-object/from16 v23, v11

    move-object/from16 v24, v6

    invoke-direct/range {v18 .. v25}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 383
    iget-object v1, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mContext:Landroid/content/Context;

    iget v3, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mWidth:I

    iget v5, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mHeight:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v2, v4

    move v4, v5

    move v5, v6

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/SecBatteryMeterDrawable;->getLinearGradientDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;IIFLandroid/graphics/LinearGradient;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 385
    iget v1, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mWidth:I

    iget v2, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mHeight:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 386
    invoke-virtual {v0, v8}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_10

    .line 388
    :cond_18
    iget-boolean v1, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mPluggedIn:Z

    if-nez v1, :cond_19

    .line 389
    iget v1, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mCriticalLevel:I

    if-gt v0, v1, :cond_19

    .line 391
    iget v0, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v9

    .line 392
    iget v1, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mHeight:I

    int-to-float v1, v1

    iget v2, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mWarningTextHeight:F

    add-float/2addr v1, v2

    mul-float/2addr v1, v6

    .line 393
    iget-object v2, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mWarningString:Ljava/lang/String;

    iget-object v3, v7, Lcom/android/systemui/SecBatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_19
    :goto_10
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 0

    .line 230
    iget p0, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mIntrinsicHeight:I

    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 0

    .line 235
    iget p0, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mIntrinsicWidth:I

    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onBatteryLevelChanged(IZZIII)V
    .locals 4

    const-string v0, "SecBatteryMeterDrawable"

    if-eqz p3, :cond_0

    .line 515
    iget-boolean v1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mCharging:Z

    if-eq p3, v1, :cond_0

    const-string v1, "Battery icon update - Charging"

    .line 516
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_0
    iget v1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mLevel:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, p1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mPluggedIn:Z

    if-ne v1, p2, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mCharging:Z

    if-eq v1, p3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v3

    .line 520
    :goto_1
    iput p1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mLevel:I

    .line 521
    iput-boolean p2, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mPluggedIn:Z

    .line 522
    iput-boolean p3, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mCharging:Z

    if-nez v1, :cond_5

    .line 526
    iget p1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryStatus:I

    if-ne p1, p4, :cond_4

    iget p1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryHealth:I

    if-eq p1, p5, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3

    :cond_4
    :goto_2
    move v1, v3

    .line 528
    :cond_5
    :goto_3
    iput p4, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryStatus:I

    .line 529
    iput p5, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryHealth:I

    .line 532
    sget-boolean p1, Lcom/android/systemui/Rune;->PWRUI_SUPPORT_INCOMPATIBLE_CHARGER_CHECK:Z

    if-eqz p1, :cond_8

    if-nez v1, :cond_7

    .line 534
    iget p1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryOnline:I

    if-eq p1, p6, :cond_6

    move v2, v3

    :cond_6
    move v1, v2

    .line 536
    :cond_7
    iput p6, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryOnline:I

    :cond_8
    if-eqz v1, :cond_9

    const-string p1, "onBatteryLevelChanged() isSomethingChanged!"

    .line 540
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object p1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mPostInvalidateHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_9

    .line 542
    iget-object p0, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mPostInvalidateHandler:Landroid/os/Handler;

    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_9
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    .line 548
    invoke-direct {p0}, Lcom/android/systemui/SecBatteryMeterDrawable;->loadDimens()V

    .line 549
    invoke-virtual {p0}, Lcom/android/systemui/SecBatteryMeterDrawable;->postInvalidate()V

    return-void
.end method

.method protected postInvalidate()V
    .locals 3

    .line 224
    new-instance v0, Lcom/android/systemui/-$$Lambda$pLDUKm-C1axrzTEqzGuAkmbc05k;

    invoke-direct {v0, p0}, Lcom/android/systemui/-$$Lambda$pLDUKm-C1axrzTEqzGuAkmbc05k;-><init>(Lcom/android/systemui/SecBatteryMeterDrawable;)V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 225
    new-instance v0, Lcom/android/systemui/-$$Lambda$pLDUKm-C1axrzTEqzGuAkmbc05k;

    invoke-direct {v0, p0}, Lcom/android/systemui/-$$Lambda$pLDUKm-C1axrzTEqzGuAkmbc05k;-><init>(Lcom/android/systemui/SecBatteryMeterDrawable;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setBounds(IIII)V
    .locals 0

    sub-int/2addr p4, p2

    .line 455
    iput p4, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mHeight:I

    sub-int/2addr p3, p1

    .line 456
    iput p3, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mWidth:I

    .line 458
    iget p1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mHeight:I

    int-to-float p1, p1

    iget-object p2, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/systemui/R$dimen;->battery_meter_text_size_ratio:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p2

    mul-float/2addr p1, p2

    .line 459
    iget-object p2, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 460
    iget-object p2, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float p2, p2

    iput p2, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mWarningTextHeight:F

    .line 462
    sget-boolean p2, Lcom/android/systemui/Rune;->PWRUI_SUPPORT_INCOMPATIBLE_CHARGER_CHECK:Z

    if-eqz p2, :cond_0

    .line 463
    iget-object p2, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mInvalidTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 464
    iget p1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mWarningTextHeight:F

    iput p1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mInvalidTextHeight:F

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setColors(FIIZ)V
    .locals 0

    .line 473
    iget p3, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mOldDarkIntensity:F

    cmpl-float p3, p1, p3

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    return-void

    .line 477
    :cond_0
    iput p2, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mIconTint:I

    .line 480
    iget p2, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryFrameLightColor:I

    iget p3, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryFrameDarkColor:I

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/SecBatteryMeterDrawable;->getColorForDarkIntensity(FII)I

    move-result p2

    .line 482
    iget-object p3, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryFramePaint:Landroid/graphics/Paint;

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 483
    iput p2, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLevelColor:I

    .line 486
    iget p2, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLevelBackgroundLightColor:I

    iget p3, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLevelBackgroundDarkColor:I

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/SecBatteryMeterDrawable;->getColorForDarkIntensity(FII)I

    move-result p2

    .line 487
    iget-object p3, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLevelBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 489
    iget p2, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLightningBoltLightColor:I

    iget p3, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLightningBoltDarkColor:I

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/SecBatteryMeterDrawable;->getColorForDarkIntensity(FII)I

    move-result p2

    .line 490
    iget-object p3, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLightningBoltLightPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 491
    iget p2, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLightningBoltDarkColor:I

    iget p3, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLightningBoltLightColor:I

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/SecBatteryMeterDrawable;->getColorForDarkIntensity(FII)I

    move-result p2

    .line 492
    iget-object p3, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLightningBoltDarkPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 494
    iput p1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mOldDarkIntensity:F

    .line 495
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorsForQSColoring(FII)V
    .locals 4

    .line 502
    iput p2, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryFrameLightColor:I

    .line 503
    iput p2, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryFrameDarkColor:I

    .line 504
    iput p2, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLevelColor:I

    .line 505
    iget-object v0, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryFramePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLevelColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 506
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    const/16 v3, 0x66

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLevelBackgroundLightColor:I

    .line 507
    iget v0, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLevelBackgroundLightColor:I

    iput v0, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLevelBackgroundDarkColor:I

    .line 508
    iput p3, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLightningBoltLightColor:I

    .line 509
    iput p3, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mBatteryLightningBoltDarkColor:I

    const/4 p3, 0x1

    .line 510
    invoke-virtual {p0, p1, p2, p2, p3}, Lcom/android/systemui/SecBatteryMeterDrawable;->setColors(FIIZ)V

    return-void
.end method

.method public updateStatusBarBatteryColour()V
    .locals 10

    .line 571
    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->getBatteryLevelColourItem()Lcom/samsung/android/knox/custom/StatusbarIconItem;

    move-result-object v0

    const-string v1, "SecBatteryMeterDrawable"

    if-nez v0, :cond_0

    const-string v0, "[KNOX] updateStatusBarBatteryColour(), getBatteryLevelColourItem is null"

    .line 574
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    invoke-direct {p0}, Lcom/android/systemui/SecBatteryMeterDrawable;->initColors()V

    goto/16 :goto_3

    .line 578
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[KNOX] updateStatusBarBatteryColour(), StatusbarIconItem="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/StatusbarIconItem;->getAttributeColourArray()[Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 585
    array-length v4, v0

    if-lez v4, :cond_2

    .line 586
    array-length v2, v0

    new-array v2, v2, [I

    .line 587
    array-length v4, v0

    new-array v4, v4, [I

    .line 589
    array-length v5, v0

    move v6, v3

    move v7, v6

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v8, v0, v6

    .line 590
    invoke-virtual {v8}, Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;->getAttribute()I

    move-result v9

    aput v9, v2, v7

    .line 591
    invoke-virtual {v8}, Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;->getColour()I

    move-result v8

    aput v8, v4, v7

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 594
    :cond_1
    array-length v5, v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    move-object v4, v0

    move v5, v3

    :goto_1
    if-eqz v0, :cond_3

    mul-int/lit8 v0, v5, 0x2

    .line 600
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mColors:[I

    :goto_2
    if-ge v3, v5, :cond_3

    .line 602
    iget-object v0, p0, Lcom/android/systemui/SecBatteryMeterDrawable;->mColors:[I

    mul-int/lit8 v6, v3, 0x2

    aget v7, v2, v3

    aput v7, v0, v6

    add-int/lit8 v6, v6, 0x1

    .line 603
    aget v7, v4, v3

    aput v7, v0, v6

    .line 604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " -"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "=knox_levels[i]="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v2, v3

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", knox_colors[i]="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v4, v3

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 608
    :cond_3
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/SecBatteryMeterDrawable;->postInvalidate()V

    return-void
.end method
