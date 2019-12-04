.class Lcom/android/systemui/widget/SystemUIButton$ResData;
.super Ljava/lang/Object;
.source "SystemUIButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/widget/SystemUIButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResData"
.end annotation


# instance fields
.field private mAdaptiveColorMain:Ljava/lang/String;

.field private mOriginBackground:Ljava/lang/String;

.field private mOriginBackgroundId:I

.field private mOriginColor:Ljava/lang/String;

.field private mOriginColorId:I

.field private mOriginShadowColor:Ljava/lang/String;

.field private mOriginShadowColorId:I

.field private mThemeBackground:Ljava/lang/String;

.field private mThemeBackgroundId:I

.field private mThemeBlackBackground:Ljava/lang/String;

.field private mThemeBlackBackgroundId:I

.field private mThemeBlackColor:Ljava/lang/String;

.field private mThemeBlackColorId:I

.field private mThemeBlackShadowColor:Ljava/lang/String;

.field private mThemeBlackShadowColorId:I

.field private mThemeColor:Ljava/lang/String;

.field private mThemeColorId:I

.field private mThemeShadowColor:Ljava/lang/String;

.field private mThemeShadowColorId:I

.field private mWallpaperArea:Ljava/lang/String;

.field private mWhiteBgBackground:Ljava/lang/String;

.field private mWhiteBgBackgroundId:I

.field private mWhiteBgColor:Ljava/lang/String;

.field private mWhiteBgColorId:I

.field private mWhiteBgShadowColor:Ljava/lang/String;

.field private mWhiteBgShadowColorId:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/widget/SystemUIButton$1;)V
    .locals 0

    .line 332
    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIButton$ResData;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;
    .locals 0

    .line 332
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mWallpaperArea:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/widget/SystemUIButton$ResData;)I
    .locals 0

    .line 332
    iget p0, p0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeBlackBackgroundId:I

    return p0
.end method

.method static synthetic access$1002(Lcom/android/systemui/widget/SystemUIButton$ResData;I)I
    .locals 0

    .line 332
    iput p1, p0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeBlackBackgroundId:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mWallpaperArea:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/widget/SystemUIButton$ResData;)I
    .locals 0

    .line 332
    iget p0, p0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeColorId:I

    return p0
.end method

.method static synthetic access$1102(Lcom/android/systemui/widget/SystemUIButton$ResData;I)I
    .locals 0

    .line 332
    iput p1, p0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeColorId:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/widget/SystemUIButton$ResData;)I
    .locals 0

    .line 332
    iget p0, p0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeShadowColorId:I

    return p0
.end method

.method static synthetic access$1202(Lcom/android/systemui/widget/SystemUIButton$ResData;I)I
    .locals 0

    .line 332
    iput p1, p0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeShadowColorId:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/widget/SystemUIButton$ResData;)I
    .locals 0

    .line 332
    iget p0, p0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeBackgroundId:I

    return p0
.end method

.method static synthetic access$1302(Lcom/android/systemui/widget/SystemUIButton$ResData;I)I
    .locals 0

    .line 332
    iput p1, p0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeBackgroundId:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;
    .locals 0

    .line 332
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mAdaptiveColorMain:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mAdaptiveColorMain:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;
    .locals 0

    .line 332
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mOriginColor:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mOriginColor:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;
    .locals 0

    .line 332
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mWhiteBgColor:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mWhiteBgColor:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;
    .locals 0

    .line 332
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeColor:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeColor:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;
    .locals 0

    .line 332
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeBlackColor:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeBlackColor:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;
    .locals 0

    .line 332
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mOriginShadowColor:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1902(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mOriginShadowColor:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/widget/SystemUIButton$ResData;)I
    .locals 0

    .line 332
    iget p0, p0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mOriginColorId:I

    return p0
.end method

.method static synthetic access$2000(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;
    .locals 0

    .line 332
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mWhiteBgShadowColor:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mWhiteBgShadowColor:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/systemui/widget/SystemUIButton$ResData;I)I
    .locals 0

    .line 332
    iput p1, p0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mOriginColorId:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;
    .locals 0

    .line 332
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeShadowColor:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2102(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeShadowColor:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;
    .locals 0

    .line 332
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeBlackShadowColor:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2202(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeBlackShadowColor:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;
    .locals 0

    .line 332
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mOriginBackground:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2302(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mOriginBackground:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;
    .locals 0

    .line 332
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mWhiteBgBackground:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2402(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mWhiteBgBackground:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;
    .locals 0

    .line 332
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeBackground:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2502(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeBackground:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;
    .locals 0

    .line 332
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeBlackBackground:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2602(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeBlackBackground:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/widget/SystemUIButton$ResData;)I
    .locals 0

    .line 332
    iget p0, p0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mOriginShadowColorId:I

    return p0
.end method

.method static synthetic access$302(Lcom/android/systemui/widget/SystemUIButton$ResData;I)I
    .locals 0

    .line 332
    iput p1, p0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mOriginShadowColorId:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/widget/SystemUIButton$ResData;)I
    .locals 0

    .line 332
    iget p0, p0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mOriginBackgroundId:I

    return p0
.end method

.method static synthetic access$402(Lcom/android/systemui/widget/SystemUIButton$ResData;I)I
    .locals 0

    .line 332
    iput p1, p0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mOriginBackgroundId:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/widget/SystemUIButton$ResData;)I
    .locals 0

    .line 332
    iget p0, p0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mWhiteBgColorId:I

    return p0
.end method

.method static synthetic access$502(Lcom/android/systemui/widget/SystemUIButton$ResData;I)I
    .locals 0

    .line 332
    iput p1, p0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mWhiteBgColorId:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/widget/SystemUIButton$ResData;)I
    .locals 0

    .line 332
    iget p0, p0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mWhiteBgShadowColorId:I

    return p0
.end method

.method static synthetic access$602(Lcom/android/systemui/widget/SystemUIButton$ResData;I)I
    .locals 0

    .line 332
    iput p1, p0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mWhiteBgShadowColorId:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/widget/SystemUIButton$ResData;)I
    .locals 0

    .line 332
    iget p0, p0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mWhiteBgBackgroundId:I

    return p0
.end method

.method static synthetic access$702(Lcom/android/systemui/widget/SystemUIButton$ResData;I)I
    .locals 0

    .line 332
    iput p1, p0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mWhiteBgBackgroundId:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/widget/SystemUIButton$ResData;)I
    .locals 0

    .line 332
    iget p0, p0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeBlackColorId:I

    return p0
.end method

.method static synthetic access$802(Lcom/android/systemui/widget/SystemUIButton$ResData;I)I
    .locals 0

    .line 332
    iput p1, p0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeBlackColorId:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/widget/SystemUIButton$ResData;)I
    .locals 0

    .line 332
    iget p0, p0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeBlackShadowColorId:I

    return p0
.end method

.method static synthetic access$902(Lcom/android/systemui/widget/SystemUIButton$ResData;I)I
    .locals 0

    .line 332
    iput p1, p0, Lcom/android/systemui/widget/SystemUIButton$ResData;->mThemeBlackShadowColorId:I

    return p1
.end method
