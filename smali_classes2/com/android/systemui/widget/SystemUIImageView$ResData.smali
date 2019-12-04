.class Lcom/android/systemui/widget/SystemUIImageView$ResData;
.super Ljava/lang/Object;
.source "SystemUIImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/widget/SystemUIImageView;
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

.field private mOriginImage:Ljava/lang/String;

.field private mOriginImageId:I

.field private mThemeBackground:Ljava/lang/String;

.field private mThemeBackgroundId:I

.field private mThemeBlackBackground:Ljava/lang/String;

.field private mThemeBlackBackgroundId:I

.field private mThemeBlackColor:Ljava/lang/String;

.field private mThemeBlackColorId:I

.field private mThemeBlackImage:Ljava/lang/String;

.field private mThemeBlackImageId:I

.field private mThemeColor:Ljava/lang/String;

.field private mThemeColorId:I

.field private mThemeImage:Ljava/lang/String;

.field private mThemeImageId:I

.field private mWallpaperArea:Ljava/lang/String;

.field private mWhiteBgBackground:Ljava/lang/String;

.field private mWhiteBgBackgroundId:I

.field private mWhiteBgColor:Ljava/lang/String;

.field private mWhiteBgColorId:I

.field private mWhiteBgImage:Ljava/lang/String;

.field private mWhiteBgImageId:I

.field private mWhiteBgTintColor:Ljava/lang/String;

.field private mWhiteBgTintColorId:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/widget/SystemUIImageView$1;)V
    .locals 0

    .line 606
    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;
    .locals 0

    .line 606
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWallpaperArea:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I
    .locals 0

    .line 606
    iget p0, p0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeColorId:I

    return p0
.end method

.method static synthetic access$1002(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I
    .locals 0

    .line 606
    iput p1, p0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeColorId:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 606
    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWallpaperArea:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I
    .locals 0

    .line 606
    iget p0, p0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeBackgroundId:I

    return p0
.end method

.method static synthetic access$1102(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I
    .locals 0

    .line 606
    iput p1, p0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeBackgroundId:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;
    .locals 0

    .line 606
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mAdaptiveColorMain:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 606
    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mAdaptiveColorMain:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;
    .locals 0

    .line 606
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgImage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 606
    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgImage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;
    .locals 0

    .line 606
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgColor:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 606
    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgColor:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I
    .locals 0

    .line 606
    iget p0, p0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgColorId:I

    return p0
.end method

.method static synthetic access$1502(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I
    .locals 0

    .line 606
    iput p1, p0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgColorId:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;
    .locals 0

    .line 606
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mOriginColor:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 606
    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mOriginColor:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;
    .locals 0

    .line 606
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeColor:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 606
    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeColor:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;
    .locals 0

    .line 606
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeBlackColor:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 606
    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeBlackColor:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;
    .locals 0

    .line 606
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mOriginImage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1902(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 606
    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mOriginImage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I
    .locals 0

    .line 606
    iget p0, p0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mOriginImageId:I

    return p0
.end method

.method static synthetic access$2000(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;
    .locals 0

    .line 606
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeImage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 606
    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeImage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I
    .locals 0

    .line 606
    iput p1, p0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mOriginImageId:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;
    .locals 0

    .line 606
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeBlackImage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2102(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 606
    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeBlackImage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;
    .locals 0

    .line 606
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgTintColor:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2202(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 606
    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgTintColor:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;
    .locals 0

    .line 606
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mOriginBackground:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2302(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 606
    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mOriginBackground:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;
    .locals 0

    .line 606
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgBackground:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2402(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 606
    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgBackground:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;
    .locals 0

    .line 606
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeBackground:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2502(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 606
    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeBackground:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;
    .locals 0

    .line 606
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeBlackBackground:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2602(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 606
    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeBlackBackground:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2702(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I
    .locals 0

    .line 606
    iput p1, p0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mOriginColorId:I

    return p1
.end method

.method static synthetic access$2802(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I
    .locals 0

    .line 606
    iput p1, p0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgTintColorId:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I
    .locals 0

    .line 606
    iget p0, p0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mOriginBackgroundId:I

    return p0
.end method

.method static synthetic access$302(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I
    .locals 0

    .line 606
    iput p1, p0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mOriginBackgroundId:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I
    .locals 0

    .line 606
    iget p0, p0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgImageId:I

    return p0
.end method

.method static synthetic access$402(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I
    .locals 0

    .line 606
    iput p1, p0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgImageId:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I
    .locals 0

    .line 606
    iget p0, p0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgBackgroundId:I

    return p0
.end method

.method static synthetic access$502(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I
    .locals 0

    .line 606
    iput p1, p0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mWhiteBgBackgroundId:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I
    .locals 0

    .line 606
    iget p0, p0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeBlackImageId:I

    return p0
.end method

.method static synthetic access$602(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I
    .locals 0

    .line 606
    iput p1, p0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeBlackImageId:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I
    .locals 0

    .line 606
    iget p0, p0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeBlackColorId:I

    return p0
.end method

.method static synthetic access$702(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I
    .locals 0

    .line 606
    iput p1, p0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeBlackColorId:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I
    .locals 0

    .line 606
    iget p0, p0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeBlackBackgroundId:I

    return p0
.end method

.method static synthetic access$802(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I
    .locals 0

    .line 606
    iput p1, p0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeBlackBackgroundId:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I
    .locals 0

    .line 606
    iget p0, p0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeImageId:I

    return p0
.end method

.method static synthetic access$902(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I
    .locals 0

    .line 606
    iput p1, p0, Lcom/android/systemui/widget/SystemUIImageView$ResData;->mThemeImageId:I

    return p1
.end method
