.class public Lcom/android/systemui/screenshot/SmartClipDataExtractor;
.super Ljava/lang/Object;
.source "SmartClipDataExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SmartClipDataExtractor"

.field private static mWhiteWebAppList:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "com.android.chrome"

    const-string v1, "com.sec.android.app.sbrowser"

    const-string v2, "com.sec.android.app.sbrowser.beta"

    .line 32
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->mWhiteWebAppList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canExtractWebData(Landroid/content/Context;)Z
    .locals 3

    .line 39
    invoke-static {p0}, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->isSupportSmartClip(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 40
    sget-object p0, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    const-string v0, "canExtractWebData : SmartClip is not supported"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 44
    :cond_0
    invoke-static {p0}, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->isDesktopModeEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 45
    sget-object p0, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    const-string v0, "canExtractWebData : Desktop mode enabled"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 49
    :cond_1
    invoke-static {p0}, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->isMultiWindowStyleAppExist(Landroid/content/Context;)Z

    move-result p0

    if-ne p0, v2, :cond_2

    .line 50
    sget-object p0, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    const-string v0, "canExtractWebData : MultiWindow style app exists"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    return v2
.end method

.method private static extractSmartClipData(Landroid/content/Context;II)Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;
    .locals 3

    .line 103
    div-int/lit8 p1, p1, 0x2

    .line 104
    div-int/lit8 p2, p2, 0x2

    .line 105
    new-instance v0, Landroid/graphics/Rect;

    add-int/lit8 v1, p1, 0x1

    add-int/lit8 v2, p2, 0x1

    invoke-direct {v0, p1, p2, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 107
    new-instance p1, Lcom/samsung/android/content/smartclip/SemRemoteAppDataExtractionManager;

    invoke-direct {p1, p0}, Lcom/samsung/android/content/smartclip/SemRemoteAppDataExtractionManager;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x1

    const/4 p2, 0x0

    .line 108
    invoke-virtual {p1, v0, p2, p0}, Lcom/samsung/android/content/smartclip/SemRemoteAppDataExtractionManager;->getSmartClipDataByScreenRect(Landroid/graphics/Rect;Landroid/os/IBinder;I)Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    move-result-object p0

    return-object p0
.end method

.method public static getWebData(Landroid/content/Context;II)Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;
    .locals 4

    .line 61
    invoke-static {p0, p1, p2}, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->extractSmartClipData(Landroid/content/Context;II)Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    .line 63
    sget-object p0, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    const-string p2, "getWebData : Failed to extract the SmartClip data"

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->getContentRect()Landroid/graphics/Rect;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 69
    sget-object v0, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWebData : content Rect w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string/jumbo p2, "url"

    .line 72
    invoke-virtual {p0, p2}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->getMetaTag(Ljava/lang/String;)Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;

    move-result-object p2

    .line 73
    invoke-virtual {p2}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 74
    invoke-virtual {p2}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;

    .line 75
    invoke-virtual {v0}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 76
    sget-object v1, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWebData : url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-static {v0}, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 83
    :goto_0
    new-instance p2, Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;

    invoke-virtual {p0}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->getAppPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, v0, p0}, Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {p2}, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->isValidWebData(Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 85
    sget-object p0, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    const-string p2, "getWebData : Invalid web data"

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    move-object p1, p2

    :cond_5
    :goto_1
    return-object p1
.end method

.method private static isDesktopModeEnabled(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "desktopmode"

    .line 153
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz p0, :cond_0

    .line 155
    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isMultiWindowStyleAppExist(Landroid/content/Context;)Z
    .locals 3

    .line 161
    new-instance p0, Lcom/samsung/android/app/SemMultiWindowManager;

    invoke-direct {p0}, Lcom/samsung/android/app/SemMultiWindowManager;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/SemMultiWindowManager;->getMode()I

    move-result p0

    .line 162
    sget-object v0, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMultiWindowStyleAppExist : mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_1

    .line 167
    sget-object v0, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    const-string v1, "isMultiWindowStyleAppExist : MODE_FREEFORM"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_2

    .line 170
    sget-object v0, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    const-string v1, "isMultiWindowStyleAppExist : MODE_PICTURE_IN_PICTURE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_3

    .line 173
    sget-object p0, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    const-string v0, "isMultiWindowStyleAppExist : MODE_SPLIT_SCREEN"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private static isSupportSmartClip(Landroid/content/Context;)Z
    .locals 1

    .line 182
    :try_start_0
    new-instance v0, Lcom/samsung/android/content/smartclip/SemRemoteAppDataExtractionManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/content/smartclip/SemRemoteAppDataExtractionManager;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isValidUrl(Ljava/lang/String;)Z
    .locals 1

    .line 113
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "http://"

    .line 114
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static isValidWebData(Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;)Z
    .locals 5

    .line 121
    iget-object v0, p0, Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;->mUrl:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;->mAppPkgName:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_2

    .line 126
    :cond_0
    sget-object v0, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isValidWebData url : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;->mUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", data.mAppPkgName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;->mAppPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 129
    sget-object p0, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    const-string v0, "isValidWebData : Not valid url"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    move v0, v1

    .line 134
    :goto_0
    sget-object v2, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->mWhiteWebAppList:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x1

    if-ge v0, v3, :cond_3

    .line 135
    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;->mAppPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v4, :cond_2

    move p0, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move p0, v1

    :goto_1
    if-nez p0, :cond_4

    .line 142
    sget-object p0, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    const-string v0, "isValidWebData : Not white app"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    return v4

    .line 122
    :cond_5
    :goto_2
    sget-object p0, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    const-string v0, "isValidWebData : url or appPkgName is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static putWebDataToContentValues(Landroid/content/ContentValues;Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;)V
    .locals 3

    .line 93
    invoke-static {p1}, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->isValidWebData(Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 94
    sget-object v0, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "putWebDataToContentValues : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;->mAppPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p1, Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;->mUrl:Ljava/lang/String;

    const-string v1, "captured_url"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object p1, p1, Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;->mAppPkgName:Ljava/lang/String;

    const-string v0, "captured_app"

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_0
    sget-object p0, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    const-string p1, "putWebDataToContentValues : Web data is not valid"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
