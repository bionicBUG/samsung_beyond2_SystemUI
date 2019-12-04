.class Lcom/android/systemui/widget/SystemUIView$ResData;
.super Ljava/lang/Object;
.source "SystemUIView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/widget/SystemUIView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResData"
.end annotation


# instance fields
.field private mAdaptiveColorMain:Ljava/lang/String;

.field private mOriginColor:Ljava/lang/String;

.field private mOriginColorId:I

.field private mOriginImage:Ljava/lang/String;

.field private mOriginImageId:I

.field private mThemeBlackColor:Ljava/lang/String;

.field private mThemeBlackColorId:I

.field private mThemeBlackImage:Ljava/lang/String;

.field private mThemeBlackImageId:I

.field private mThemeColor:Ljava/lang/String;

.field private mThemeColorId:I

.field private mThemeImage:Ljava/lang/String;

.field private mThemeImageId:I

.field private mWallpaperArea:Ljava/lang/String;

.field private mWhiteBgColor:Ljava/lang/String;

.field private mWhiteBgColorId:I

.field private mWhiteBgImage:Ljava/lang/String;

.field private mWhiteBgImageId:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/widget/SystemUIView$1;)V
    .locals 0

    .line 209
    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIView$ResData;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIView$ResData;->mWallpaperArea:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIView$ResData;->mThemeColor:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/android/systemui/widget/SystemUIView$ResData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIView$ResData;->mThemeColor:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/systemui/widget/SystemUIView$ResData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIView$ResData;->mWallpaperArea:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIView$ResData;->mThemeBlackColor:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/android/systemui/widget/SystemUIView$ResData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIView$ResData;->mThemeBlackColor:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIView$ResData;->mOriginImage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/android/systemui/widget/SystemUIView$ResData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIView$ResData;->mOriginImage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIView$ResData;->mThemeImage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/android/systemui/widget/SystemUIView$ResData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIView$ResData;->mThemeImage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIView$ResData;->mThemeBlackImage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/android/systemui/widget/SystemUIView$ResData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIView$ResData;->mThemeBlackImage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/android/systemui/widget/SystemUIView$ResData;I)I
    .locals 0

    .line 209
    iput p1, p0, Lcom/android/systemui/widget/SystemUIView$ResData;->mThemeColorId:I

    return p1
.end method

.method static synthetic access$1602(Lcom/android/systemui/widget/SystemUIView$ResData;I)I
    .locals 0

    .line 209
    iput p1, p0, Lcom/android/systemui/widget/SystemUIView$ResData;->mThemeBlackColorId:I

    return p1
.end method

.method static synthetic access$1702(Lcom/android/systemui/widget/SystemUIView$ResData;I)I
    .locals 0

    .line 209
    iput p1, p0, Lcom/android/systemui/widget/SystemUIView$ResData;->mThemeImageId:I

    return p1
.end method

.method static synthetic access$1802(Lcom/android/systemui/widget/SystemUIView$ResData;I)I
    .locals 0

    .line 209
    iput p1, p0, Lcom/android/systemui/widget/SystemUIView$ResData;->mThemeBlackImageId:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/widget/SystemUIView$ResData;)I
    .locals 0

    .line 209
    iget p0, p0, Lcom/android/systemui/widget/SystemUIView$ResData;->mOriginImageId:I

    return p0
.end method

.method static synthetic access$202(Lcom/android/systemui/widget/SystemUIView$ResData;I)I
    .locals 0

    .line 209
    iput p1, p0, Lcom/android/systemui/widget/SystemUIView$ResData;->mOriginImageId:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/widget/SystemUIView$ResData;)I
    .locals 0

    .line 209
    iget p0, p0, Lcom/android/systemui/widget/SystemUIView$ResData;->mOriginColorId:I

    return p0
.end method

.method static synthetic access$302(Lcom/android/systemui/widget/SystemUIView$ResData;I)I
    .locals 0

    .line 209
    iput p1, p0, Lcom/android/systemui/widget/SystemUIView$ResData;->mOriginColorId:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/widget/SystemUIView$ResData;)I
    .locals 0

    .line 209
    iget p0, p0, Lcom/android/systemui/widget/SystemUIView$ResData;->mWhiteBgImageId:I

    return p0
.end method

.method static synthetic access$402(Lcom/android/systemui/widget/SystemUIView$ResData;I)I
    .locals 0

    .line 209
    iput p1, p0, Lcom/android/systemui/widget/SystemUIView$ResData;->mWhiteBgImageId:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/widget/SystemUIView$ResData;)I
    .locals 0

    .line 209
    iget p0, p0, Lcom/android/systemui/widget/SystemUIView$ResData;->mWhiteBgColorId:I

    return p0
.end method

.method static synthetic access$502(Lcom/android/systemui/widget/SystemUIView$ResData;I)I
    .locals 0

    .line 209
    iput p1, p0, Lcom/android/systemui/widget/SystemUIView$ResData;->mWhiteBgColorId:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIView$ResData;->mAdaptiveColorMain:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Lcom/android/systemui/widget/SystemUIView$ResData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIView$ResData;->mAdaptiveColorMain:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIView$ResData;->mWhiteBgImage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$702(Lcom/android/systemui/widget/SystemUIView$ResData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIView$ResData;->mWhiteBgImage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIView$ResData;->mWhiteBgColor:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$802(Lcom/android/systemui/widget/SystemUIView$ResData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIView$ResData;->mWhiteBgColor:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIView$ResData;->mOriginColor:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$902(Lcom/android/systemui/widget/SystemUIView$ResData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIView$ResData;->mOriginColor:Ljava/lang/String;

    return-object p1
.end method
