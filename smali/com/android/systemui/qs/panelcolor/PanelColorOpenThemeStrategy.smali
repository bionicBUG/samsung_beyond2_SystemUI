.class public Lcom/android/systemui/qs/panelcolor/PanelColorOpenThemeStrategy;
.super Lcom/android/systemui/qs/panelcolor/PanelColorStrategy;
.source "PanelColorOpenThemeStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/panelcolor/PanelColorOpenThemeStrategy$ThemePanelColorModel;
    }
.end annotation


# instance fields
.field private mPanelIndicatorColor:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/android/systemui/qs/panelcolor/PanelColorStrategy;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/panelcolor/PanelColorOpenThemeStrategy;)I
    .locals 0

    .line 14
    iget p0, p0, Lcom/android/systemui/qs/panelcolor/PanelColorOpenThemeStrategy;->mPanelIndicatorColor:I

    return p0
.end method

.method private isQsPanelBgColorDark(I)Z
    .locals 7

    shr-int/lit8 p0, p1, 0x10

    and-int/lit16 p0, p0, 0xff

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 p1, p1, 0xff

    mul-int/2addr p0, p0

    int-to-double v1, p0

    const-wide v3, 0x3fced916872b020cL    # 0.241

    mul-double/2addr v1, v3

    mul-int/2addr v0, v0

    int-to-double v3, v0

    const-wide v5, 0x3fe61cac083126e9L    # 0.691

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    mul-int/2addr p1, p1

    int-to-double p0, p1

    const-wide v3, 0x3fb16872b020c49cL    # 0.068

    mul-double/2addr p0, v3

    add-double/2addr v1, p0

    .line 36
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-int p0, p0

    const/16 p1, 0x82

    if-ge p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public loadCommonColors(Landroid/view/ViewGroup;)Lcom/android/systemui/qs/panelcolor/PanelColorModel;
    .locals 1

    .line 18
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 19
    sget v0, Lcom/android/systemui/R$color;->sec_qs_background:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/panelcolor/PanelColorOpenThemeStrategy;->isQsPanelBgColorDark(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    sget v0, Lcom/android/systemui/R$color;->light_mode_icon_color_single_tone:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/panelcolor/PanelColorOpenThemeStrategy;->mPanelIndicatorColor:I

    goto :goto_0

    .line 22
    :cond_0
    sget v0, Lcom/android/systemui/R$color;->dark_mode_icon_color_single_tone:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/panelcolor/PanelColorOpenThemeStrategy;->mPanelIndicatorColor:I

    .line 25
    :goto_0
    new-instance v0, Lcom/android/systemui/qs/panelcolor/PanelColorOpenThemeStrategy$ThemePanelColorModel;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/panelcolor/PanelColorOpenThemeStrategy$ThemePanelColorModel;-><init>(Lcom/android/systemui/qs/panelcolor/PanelColorOpenThemeStrategy;Landroid/content/Context;)V

    return-object v0
.end method

.method public updateCommonColorDraw(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method
