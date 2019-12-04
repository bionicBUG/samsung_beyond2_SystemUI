.class public Lcom/android/systemui/assist/ui/InvocationLightsView;
.super Landroid/view/View;
.source "InvocationLightsView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$DarkIntensityListener;


# static fields
.field private static final LIGHT_HEIGHT_DP:I


# instance fields
.field protected final mAssistInvocationLights:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/assist/ui/EdgeLight;",
            ">;"
        }
    .end annotation
.end field

.field private final mDarkColor:I

.field protected final mGuide:Lcom/android/systemui/assist/ui/PerimeterPathGuide;

.field private final mLightColor:I

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPath:Landroid/graphics/Path;

.field private mRegistered:Z

.field private mScreenLocation:[I

.field private final mStrokeWidth:I

.field private mUseNavBarColor:Z

.field private final mViewHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    sput v0, Lcom/android/systemui/assist/ui/InvocationLightsView;->LIGHT_HEIGHT_DP:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/assist/ui/InvocationLightsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/assist/ui/InvocationLightsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/assist/ui/InvocationLightsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7

    .line 88
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 55
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mAssistInvocationLights:Ljava/util/ArrayList;

    .line 58
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mPaint:Landroid/graphics/Paint;

    .line 61
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mPath:Landroid/graphics/Path;

    const/4 p2, 0x2

    new-array p3, p2, [I

    .line 70
    iput-object p3, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mScreenLocation:[I

    const/4 p3, 0x0

    .line 71
    iput-boolean p3, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mRegistered:Z

    const/4 p4, 0x1

    .line 72
    iput-boolean p4, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mUseNavBarColor:Z

    .line 90
    sget v0, Lcom/android/systemui/assist/ui/InvocationLightsView;->LIGHT_HEIGHT_DP:I

    int-to-float v0, v0

    invoke-static {v0, p1}, Lcom/android/systemui/assist/ui/DisplayUtils;->convertDpToPx(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mStrokeWidth:I

    .line 91
    iget-object v0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 92
    iget-object v0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 93
    iget-object v0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 94
    iget-object v0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 97
    invoke-static {p1}, Lcom/android/systemui/assist/ui/DisplayUtils;->getWidth(Landroid/content/Context;)I

    move-result v5

    .line 98
    invoke-static {p1}, Lcom/android/systemui/assist/ui/DisplayUtils;->getHeight(Landroid/content/Context;)I

    move-result v6

    .line 99
    new-instance p4, Lcom/android/systemui/assist/ui/PerimeterPathGuide;

    invoke-virtual {p0, p1}, Lcom/android/systemui/assist/ui/InvocationLightsView;->createCornerPathRenderer(Landroid/content/Context;)Lcom/android/systemui/assist/ui/CornerPathRenderer;

    move-result-object v3

    iget v0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mStrokeWidth:I

    div-int/lit8 v4, v0, 0x2

    move-object v1, p4

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;-><init>(Landroid/content/Context;Lcom/android/systemui/assist/ui/CornerPathRenderer;III)V

    iput-object p4, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mGuide:Lcom/android/systemui/assist/ui/PerimeterPathGuide;

    .line 102
    sget-boolean p2, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/assist/ui/InvocationLightsView;->getInvocationLightsRadius()I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/systemui/assist/ui/DisplayUtils;->getCornerRadiusBottom(Landroid/content/Context;)I

    move-result p2

    .line 103
    :goto_0
    sget-boolean p4, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz p4, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/assist/ui/InvocationLightsView;->getInvocationLightsRadius()I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lcom/android/systemui/assist/ui/DisplayUtils;->getCornerRadiusTop(Landroid/content/Context;)I

    move-result p1

    .line 104
    :goto_1
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mViewHeight:I

    .line 106
    iget-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$attr;->darkIconTheme:I

    invoke-static {p1, p2}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result p1

    .line 107
    iget-object p2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    sget p4, Lcom/android/systemui/R$attr;->lightIconTheme:I

    invoke-static {p2, p4}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result p2

    .line 108
    new-instance p4, Landroid/view/ContextThemeWrapper;

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {p4, v0, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 109
    new-instance p2, Landroid/view/ContextThemeWrapper;

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 110
    sget-boolean p1, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    sget p4, Lcom/android/systemui/R$color;->navbar_icon_color_light:I

    invoke-virtual {p1, p4}, Landroid/content/Context;->getColor(I)I

    move-result p1

    goto :goto_2

    .line 111
    :cond_2
    sget p1, Lcom/android/systemui/R$attr;->singleToneColor:I

    invoke-static {p4, p1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p1

    :goto_2
    iput p1, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mLightColor:I

    .line 112
    sget-boolean p1, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$color;->navbar_icon_color_dark:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    goto :goto_3

    .line 113
    :cond_3
    sget p1, Lcom/android/systemui/R$attr;->singleToneColor:I

    invoke-static {p2, p1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p1

    :goto_3
    iput p1, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mDarkColor:I

    move p1, p3

    :goto_4
    const/4 p2, 0x4

    if-ge p1, p2, :cond_4

    .line 116
    iget-object p2, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mAssistInvocationLights:Ljava/util/ArrayList;

    new-instance p4, Lcom/android/systemui/assist/ui/EdgeLight;

    const/4 v0, 0x0

    invoke-direct {p4, p3, v0, v0}, Lcom/android/systemui/assist/ui/EdgeLight;-><init>(IFF)V

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_4
    return-void
.end method

.method private attemptRegisterNavBarListener()V
    .locals 1

    .line 282
    iget-boolean v0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mRegistered:Z

    if-nez v0, :cond_2

    .line 283
    const-class v0, Lcom/android/systemui/statusbar/NavigationBarController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NavigationBarController;

    if-nez v0, :cond_0

    return-void

    .line 288
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NavigationBarController;->getDefaultNavigationBarFragment()Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 293
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getBarTransitions()Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->addDarkIntensityListener(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$DarkIntensityListener;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/assist/ui/InvocationLightsView;->updateDarkness(F)V

    const/4 v0, 0x1

    .line 294
    iput-boolean v0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mRegistered:Z

    :cond_2
    return-void
.end method

.method private attemptUnregisterNavBarListener()V
    .locals 1

    .line 299
    iget-boolean v0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mRegistered:Z

    if-eqz v0, :cond_2

    .line 300
    const-class v0, Lcom/android/systemui/statusbar/NavigationBarController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NavigationBarController;

    if-nez v0, :cond_0

    return-void

    .line 305
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NavigationBarController;->getDefaultNavigationBarFragment()Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 310
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getBarTransitions()Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->removeDarkIntensityListener(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$DarkIntensityListener;)V

    const/4 v0, 0x0

    .line 311
    iput-boolean v0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mRegistered:Z

    :cond_2
    return-void
.end method

.method private getInvocationLightsRadius()I
    .locals 2

    .line 317
    sget v0, Lcom/android/systemui/Rune;->STATBAR_CONFIG_DEVICE_CORNER_ROUND:F

    const/high16 v1, 0x40c00000    # 6.0f

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method private renderLight(Lcom/android/systemui/assist/ui/EdgeLight;Landroid/graphics/Canvas;)V
    .locals 5

    .line 276
    iget-object v0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mGuide:Lcom/android/systemui/assist/ui/PerimeterPathGuide;

    iget-object v1, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Lcom/android/systemui/assist/ui/EdgeLight;->getOffset()F

    move-result v2

    invoke-virtual {p1}, Lcom/android/systemui/assist/ui/EdgeLight;->getOffset()F

    move-result v3

    invoke-virtual {p1}, Lcom/android/systemui/assist/ui/EdgeLight;->getLength()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->strokeSegment(Landroid/graphics/Path;FF)V

    .line 277
    iget-object v0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/android/systemui/assist/ui/EdgeLight;->getColor()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 278
    iget-object p1, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method protected createCornerPathRenderer(Landroid/content/Context;)Lcom/android/systemui/assist/ui/CornerPathRenderer;
    .locals 4

    .line 253
    invoke-static {p1}, Lcom/android/systemui/assist/ui/DisplayUtils;->getWidth(Landroid/content/Context;)I

    move-result v0

    .line 254
    invoke-static {p1}, Lcom/android/systemui/assist/ui/DisplayUtils;->getHeight(Landroid/content/Context;)I

    move-result v1

    .line 255
    sget-boolean v2, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/assist/ui/InvocationLightsView;->getInvocationLightsRadius()I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/systemui/assist/ui/DisplayUtils;->getCornerRadiusBottom(Landroid/content/Context;)I

    move-result v2

    .line 256
    :goto_0
    sget-boolean v3, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/assist/ui/InvocationLightsView;->getInvocationLightsRadius()I

    move-result p0

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lcom/android/systemui/assist/ui/DisplayUtils;->getCornerRadiusTop(Landroid/content/Context;)I

    move-result p0

    .line 257
    :goto_1
    new-instance p1, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;

    invoke-direct {p1, v2, p0, v0, v1}, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;-><init>(IIII)V

    return-object p1
.end method

.method public hide()V
    .locals 3

    const/16 v0, 0x8

    .line 157
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mAssistInvocationLights:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/assist/ui/EdgeLight;

    const/4 v2, 0x0

    .line 159
    invoke-virtual {v1, v2}, Lcom/android/systemui/assist/ui/EdgeLight;->setLength(F)V

    goto :goto_0

    .line 161
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/assist/ui/InvocationLightsView;->attemptUnregisterNavBarListener()V

    return-void
.end method

.method public onDarkIntensity(F)V
    .locals 0

    .line 198
    invoke-virtual {p0, p1}, Lcom/android/systemui/assist/ui/InvocationLightsView;->updateDarkness(F)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 221
    iget-object v0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mScreenLocation:[I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 222
    iget-object v0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mScreenLocation:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    neg-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 224
    iget-boolean v0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mUseNavBarColor:Z

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mAssistInvocationLights:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/assist/ui/EdgeLight;

    .line 226
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/assist/ui/InvocationLightsView;->renderLight(Lcom/android/systemui/assist/ui/EdgeLight;Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 230
    iget-object v0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mAssistInvocationLights:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/assist/ui/InvocationLightsView;->renderLight(Lcom/android/systemui/assist/ui/EdgeLight;Landroid/graphics/Canvas;)V

    .line 231
    iget-object v0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mAssistInvocationLights:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/assist/ui/InvocationLightsView;->renderLight(Lcom/android/systemui/assist/ui/EdgeLight;Landroid/graphics/Canvas;)V

    .line 233
    iget-object v0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 234
    iget-object v0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mAssistInvocationLights:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/assist/ui/InvocationLightsView;->renderLight(Lcom/android/systemui/assist/ui/EdgeLight;Landroid/graphics/Canvas;)V

    .line 235
    iget-object v0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mAssistInvocationLights:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/assist/ui/InvocationLightsView;->renderLight(Lcom/android/systemui/assist/ui/EdgeLight;Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 204
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mViewHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 205
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public onInvocationProgress(F)V
    .locals 7

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const/16 p1, 0x8

    .line 126
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 128
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/assist/ui/InvocationLightsView;->attemptRegisterNavBarListener()V

    .line 130
    iget-object v0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mGuide:Lcom/android/systemui/assist/ui/PerimeterPathGuide;

    sget-object v1, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->BOTTOM_LEFT:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    .line 131
    invoke-virtual {v0, v1}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getRegionWidth(Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;)F

    move-result v0

    const v1, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v0

    sub-float v2, v0, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    div-float/2addr v1, v3

    .line 136
    iget-object v4, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mGuide:Lcom/android/systemui/assist/ui/PerimeterPathGuide;

    sget-object v5, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->BOTTOM:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    invoke-virtual {v4, v5}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getRegionWidth(Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;)F

    move-result v4

    const/high16 v5, 0x40800000    # 4.0f

    div-float/2addr v4, v5

    .line 138
    invoke-static {v1, v4, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v1

    neg-float v4, v0

    add-float/2addr v4, v2

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, p1

    mul-float/2addr v4, v5

    .line 141
    iget-object p1, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mGuide:Lcom/android/systemui/assist/ui/PerimeterPathGuide;

    sget-object v6, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->BOTTOM:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    invoke-virtual {p1, v6}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getRegionWidth(Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;)F

    move-result p1

    sub-float/2addr v0, v2

    mul-float/2addr v0, v5

    add-float/2addr p1, v0

    const/4 v0, 0x0

    .line 144
    invoke-virtual {p0, v0, v4, v1}, Lcom/android/systemui/assist/ui/InvocationLightsView;->setLight(IFF)V

    const/4 v2, 0x1

    add-float/2addr v4, v1

    .line 145
    invoke-virtual {p0, v2, v4, v1}, Lcom/android/systemui/assist/ui/InvocationLightsView;->setLight(IFF)V

    const/4 v2, 0x2

    mul-float/2addr v3, v1

    sub-float v3, p1, v3

    .line 146
    invoke-virtual {p0, v2, v3, v1}, Lcom/android/systemui/assist/ui/InvocationLightsView;->setLight(IFF)V

    const/4 v2, 0x3

    sub-float/2addr p1, v1

    .line 147
    invoke-virtual {p0, v2, p1, v1}, Lcom/android/systemui/assist/ui/InvocationLightsView;->setLight(IFF)V

    .line 148
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 150
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 210
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 212
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    .line 213
    iget-object p0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mGuide:Lcom/android/systemui/assist/ui/PerimeterPathGuide;

    invoke-virtual {p0, p1}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->setRotation(I)V

    return-void
.end method

.method protected setLight(IFF)V
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-lt p1, v0, :cond_1

    .line 241
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid invocation light index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InvocationLightsView"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mAssistInvocationLights:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-virtual {v0, p2}, Lcom/android/systemui/assist/ui/EdgeLight;->setOffset(F)V

    .line 244
    iget-object p0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mAssistInvocationLights:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-virtual {p0, p3}, Lcom/android/systemui/assist/ui/EdgeLight;->setLength(F)V

    return-void
.end method

.method protected updateDarkness(F)V
    .locals 3

    .line 265
    iget-boolean v0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mUseNavBarColor:Z

    if-eqz v0, :cond_1

    .line 266
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mLightColor:I

    .line 267
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mDarkColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 266
    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 268
    iget-object v0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mAssistInvocationLights:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/assist/ui/EdgeLight;

    .line 269
    invoke-virtual {v1, p1}, Lcom/android/systemui/assist/ui/EdgeLight;->setColor(I)V

    goto :goto_0

    .line 271
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method
