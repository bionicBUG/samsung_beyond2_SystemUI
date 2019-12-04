.class public Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;
.super Ljava/lang/Object;
.source "FaceWidgetMetadataParser.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# static fields
.field private static final CLASS_TYPE:Ljava/lang/reflect/Type;


# instance fields
.field private final mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mContext:Landroid/content/Context;

.field private final mFaceWidgetExecutableInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetExecutableInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIsSystemUser:Z

.field private mJsonParser:Lcom/google/gson/Gson;

.field private mMetaDataHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingsHelper:Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser$1;

    invoke-direct {v0}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser$1;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->CLASS_TYPE:Ljava/lang/reflect/Type;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;)V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->mMetaDataHashMap:Ljava/util/HashMap;

    .line 69
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->mFaceWidgetExecutableInfo:Ljava/util/Map;

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->mIsSystemUser:Z

    .line 77
    new-instance v0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser$2;-><init>(Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;)V

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 96
    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->mContext:Landroid/content/Context;

    .line 97
    iput-object p2, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->mSettingsHelper:Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;Ljava/lang/String;Z)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->updatePackage(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->removePackage(Ljava/lang/String;)V

    return-void
.end method

.method private addMetaDataInfo(Ljava/lang/String;Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;)V
    .locals 3

    .line 383
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->mMetaDataHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    invoke-virtual {p2}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;->isEnabledMenuShowingInSetting()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;->isSystemUserOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->mIsSystemUser:Z

    if-eqz v0, :cond_1

    .line 386
    :cond_0
    invoke-virtual {p2}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;->getDbKey()Ljava/lang/String;

    move-result-object v0

    .line 387
    invoke-virtual {p2}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;->isDefaultOnMenuInSetting()Z

    move-result v1

    .line 388
    iget-object v2, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->mSettingsHelper:Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->addSettingsObserver(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 389
    iget-object v2, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->mSettingsHelper:Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;

    invoke-virtual {v2, v0}, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->isNotDefinedSettingValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 390
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->mSettingsHelper:Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->setSettingValuedEnabled(Ljava/lang/String;Z)Z

    .line 394
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addMetaDataInfo() key = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", info = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FaceWidgetMetadataParser"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static getDbKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add_info_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    const-string v2, "_"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDbKeyForPageId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->getDbKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "#"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getJsonParser()Lcom/google/gson/Gson;
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->mJsonParser:Lcom/google/gson/Gson;

    if-nez v0, :cond_0

    .line 368
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->mJsonParser:Lcom/google/gson/Gson;

    .line 371
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->mJsonParser:Lcom/google/gson/Gson;

    return-object p0
.end method

.method private getMetaDataInfoList(Landroid/content/pm/ApplicationInfo;)Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 286
    :cond_0
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v3, :cond_1

    return-object v2

    .line 291
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 292
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "com.samsung.systemui.facewidget.executable"

    .line 294
    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x1

    const-string v8, "FaceWidgetMetadataParser"

    if-eqz v6, :cond_d

    .line 297
    iget-object v3, v0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 300
    :try_start_0
    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v9
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v9, v2

    :goto_0
    if-nez v9, :cond_2

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMetaDataInfoList - failed to get resource: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_2
    const-string v10, "com.samsung.systemui.permission.FACE_WIDGET"

    .line 309
    invoke-virtual {v3, v10, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    move v3, v7

    goto :goto_1

    :cond_3
    move v3, v5

    .line 311
    :goto_1
    :try_start_1
    new-instance v10, Ljava/io/InputStreamReader;

    invoke-virtual {v9, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v10, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 312
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->getJsonParser()Lcom/google/gson/Gson;

    move-result-object v6

    sget-object v11, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->CLASS_TYPE:Ljava/lang/reflect/Type;

    invoke-virtual {v6, v10, v11}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 313
    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v11

    const/4 v12, 0x3

    const/4 v13, 0x2

    if-eqz v11, :cond_c

    if-eqz v3, :cond_4

    const/4 v14, 0x4

    if-gt v11, v14, :cond_c

    :cond_4
    if-nez v3, :cond_5

    if-le v11, v13, :cond_5

    goto/16 :goto_6

    .line 322
    :cond_5
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 323
    invoke-direct {v0, v14}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->isValidPageId(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_6

    const-string v0, "getMetaDataInfoList wrong pageId[%s] / pkg[%s]"

    new-array v3, v13, [Ljava/lang/Object;

    aput-object v14, v3, v5

    aput-object v1, v3, v7

    .line 324
    invoke-static {v8, v0, v3}, Lcom/android/systemui/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 349
    :try_start_3
    invoke-virtual {v10}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-object v2

    .line 329
    :cond_7
    :try_start_4
    iget-object v0, v0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->mFaceWidgetExecutableInfo:Ljava/util/Map;

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 332
    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetExecutableInfo;

    .line 333
    iget-object v15, v14, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetExecutableInfo;->labelResName:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_8

    move v13, v5

    goto :goto_3

    .line 334
    :cond_8
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ":string/"

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v14, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetExecutableInfo;->labelResName:Ljava/lang/String;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 336
    :goto_3
    invoke-static {v1, v11}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->getPkgNameForPageId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    if-eqz v3, :cond_9

    .line 339
    new-instance v24, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;

    invoke-static {v1, v11}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->getDbKeyForPageId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    iget v15, v14, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetExecutableInfo;->menuInSetting:I

    iget-boolean v2, v14, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetExecutableInfo;->changeCurrentPage:Z

    iget-boolean v7, v14, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetExecutableInfo;->additionalInfo:Z

    iget-boolean v14, v14, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetExecutableInfo;->systemUserOnly:Z

    move/from16 v22, v14

    move-object/from16 v14, v24

    move/from16 v19, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v11

    move/from16 v18, v13

    move/from16 v20, v2

    move/from16 v21, v7

    invoke-direct/range {v14 .. v22}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZZ)V

    move-object/from16 v2, v24

    goto :goto_4

    .line 342
    :cond_9
    new-instance v2, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;

    invoke-static {v1, v11}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->getDbKeyForPageId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    iget-boolean v7, v14, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetExecutableInfo;->systemUserOnly:Z

    move-object v14, v2

    move-object/from16 v15, v23

    move-object/from16 v16, v11

    move/from16 v18, v13

    move/from16 v19, v7

    invoke-direct/range {v14 .. v19}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 338
    :goto_4
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "getMetaDataInfoList %s %s %d"

    new-array v7, v12, [Ljava/lang/Object;

    aput-object v23, v7, v5

    if-lez v13, :cond_a

    .line 346
    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_5

    :cond_a
    const/4 v11, 0x0

    :goto_5
    const/4 v14, 0x1

    aput-object v11, v7, v14

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v13, 0x2

    aput-object v11, v7, v13

    .line 345
    invoke-static {v8, v2, v7}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v13, 0x2

    goto/16 :goto_2

    .line 349
    :cond_b
    :try_start_5
    invoke-virtual {v10}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_8

    :cond_c
    :goto_6
    :try_start_6
    const-string v0, "getMetaDataInfoList - wrong page count: %d / %s / %s"

    new-array v2, v12, [Ljava/lang/Object;

    .line 316
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x1

    aput-object v1, v2, v5

    .line 317
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v2, v5

    .line 316
    invoke-static {v8, v0, v2}, Lcom/android/systemui/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 349
    :try_start_7
    invoke-virtual {v10}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 311
    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    .line 349
    :try_start_9
    invoke-virtual {v10}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v5, v0

    :try_start_a
    invoke-virtual {v2, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw v3
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    :catch_1
    move-exception v0

    .line 350
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMetaDataInfoList - failed to load: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/ "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_d
    const-string v0, "com.samsung.android.servicebox.remoteview.enable"

    .line 356
    invoke-virtual {v3, v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_e

    .line 358
    new-instance v2, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;

    invoke-static {v1}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->getDbKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3, v0}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, v5

    const-string v1, "getMetaDataInfoList %s"

    .line 359
    invoke-static {v8, v1, v0}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    :goto_8
    return-object v4
.end method

.method public static getPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 499
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 503
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPkgNameForPageId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "#"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isValidPageId(Ljava/lang/String;)Z
    .locals 4

    .line 507
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v2, 0x14

    if-gt p0, v2, :cond_0

    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v0, [Ljava/lang/Object;

    .line 508
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v3, "[0-9A-Za-z]{%d}"

    invoke-static {p0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0
.end method

.method private removeMetaDataInfo(Ljava/lang/String;)V
    .locals 2

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeMetaDataInfo() key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceWidgetMetadataParser"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->mMetaDataHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->mSettingsHelper:Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;

    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->removeSettingsObserver(Ljava/lang/String;)V

    return-void
.end method

.method private removePackage(Ljava/lang/String;)V
    .locals 5

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removePackage() key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceWidgetMetadataParser"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->mMetaDataHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 259
    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->removeMetaDataInfo(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 263
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->mFaceWidgetExecutableInfo:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-eqz v2, :cond_3

    .line 265
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 266
    invoke-static {p1, v3}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->getPkgNameForPageId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 267
    iget-object v4, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->mMetaDataHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 268
    invoke-direct {p0, v3}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->removeMetaDataInfo(Ljava/lang/String;)V

    move v0, v1

    goto :goto_1

    .line 273
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->mFaceWidgetExecutableInfo:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz v0, :cond_4

    .line 277
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->updateOrderDB()V

    :cond_4
    return-void
.end method

.method private updateMetaDataInfo(Ljava/lang/String;Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;)Z
    .locals 5

    .line 399
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->mMetaDataHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 400
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 405
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;->isEnabledMenuShowingInSetting()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;->isEnabledMenuShowingInSetting()Z

    move-result v2

    if-nez v2, :cond_1

    .line 406
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->mSettingsHelper:Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;

    invoke-virtual {v1, p1}, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->removeSettingsObserver(Ljava/lang/String;)V

    move v1, v3

    .line 410
    :cond_1
    invoke-virtual {p2}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;->getDbKey()Ljava/lang/String;

    move-result-object v2

    .line 411
    invoke-virtual {p2}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;->isDefaultOnMenuInSetting()Z

    move-result v4

    .line 412
    invoke-virtual {v0}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;->isEnabledMenuShowingInSetting()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;->isEnabledMenuShowingInSetting()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 413
    invoke-virtual {p2}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;->isSystemUserOnly()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->mIsSystemUser:Z

    if-eqz v0, :cond_5

    .line 414
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->mSettingsHelper:Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;

    invoke-virtual {v0, p1, v2, v4}, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->addSettingsObserver(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 415
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->mSettingsHelper:Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;

    invoke-virtual {v0, v2}, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->isNotDefinedSettingValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 416
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->mSettingsHelper:Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;

    invoke-virtual {v0, v2, v4}, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->setSettingValuedEnabled(Ljava/lang/String;Z)Z

    :cond_4
    move v1, v3

    .line 422
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->mMetaDataHashMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateMetaDataInfo() key = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", info = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FaceWidgetMetadataParser"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_0
    return v1
.end method

.method private updatePackage(Ljava/lang/String;Z)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 215
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const-string p2, "FaceWidgetMetadataParser"

    const-string/jumbo v3, "updatePackage() %s %s"

    invoke-static {p2, v3, v0}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v3, 0x80

    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    const-string p0, "no package found"

    .line 224
    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 228
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->getMetaDataInfoList(Landroid/content/pm/ApplicationInfo;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 229
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_3

    .line 235
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;

    .line 236
    invoke-virtual {p2}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;->getPkgName()Ljava/lang/String;

    move-result-object v0

    .line 237
    iget-object v3, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->mMetaDataHashMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;

    if-nez v3, :cond_3

    .line 239
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->addMetaDataInfo(Ljava/lang/String;Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;)V

    :goto_2
    move v1, v2

    goto :goto_1

    .line 242
    :cond_3
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->updateMetaDataInfo(Ljava/lang/String;Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    .line 249
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->updateOrderDB()V

    :cond_5
    return-void

    .line 230
    :cond_6
    :goto_3
    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->removePackage(Ljava/lang/String;)V

    return-void
.end method

.method private updateSettingsObserver()V
    .locals 5

    const-string v0, "FaceWidgetMetadataParser"

    const-string/jumbo v1, "updateSettingsObserver()"

    .line 152
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->mMetaDataHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 155
    iget-object v2, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->mMetaDataHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;

    .line 156
    iget-object v3, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->mSettingsHelper:Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;

    invoke-virtual {v3, v1}, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->removeSettingsObserver(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v2}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;->isEnabledMenuShowingInSetting()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;->isSystemUserOnly()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->mIsSystemUser:Z

    if-eqz v3, :cond_0

    .line 159
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->mSettingsHelper:Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;->getDbKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;->isDefaultOnMenuInSetting()Z

    move-result v2

    invoke-virtual {v3, v1, v4, v2}, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->addSettingsObserver(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    const-string p1, "  FaceWidgetMetadataParser"

    .line 542
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 543
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->mFaceWidgetExecutableInfo:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    const-string v0, "      "

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 544
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 545
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->mFaceWidgetExecutableInfo:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 546
    iget-object v3, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->mFaceWidgetExecutableInfo:Ljava/util/Map;

    invoke-interface {v3, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetExecutableInfo;

    .line 547
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 550
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    - isSystemUser: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->mIsSystemUser:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "    - MetaDataInfo {"

    .line 551
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 552
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->mMetaDataHashMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;

    .line 553
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p0, "      }"

    .line 555
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getMetadata()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;",
            ">;"
        }
    .end annotation

    .line 211
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->mMetaDataHashMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public getPageId(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 494
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->mMetaDataHashMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;

    if-eqz p0, :cond_0

    .line 495
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;->getPageId()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public isEnabledChangeCurrentPage(Ljava/lang/String;)Z
    .locals 0

    .line 517
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->mMetaDataHashMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;

    if-eqz p0, :cond_0

    .line 518
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;->isChangeCurrentPage()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPermissionGranted(Ljava/lang/String;)Z
    .locals 0

    .line 532
    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->getPageId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->isPermissionGrantedByPageId(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isPermissionGrantedByPageId(Ljava/lang/String;)Z
    .locals 0

    .line 536
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->mMetaDataHashMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;

    if-eqz p0, :cond_0

    .line 537
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;->isPermissionGranted()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isShowingInFaceWidgetOnly(Ljava/lang/String;)Z
    .locals 0

    .line 512
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->mMetaDataHashMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;

    if-eqz p0, :cond_0

    .line 513
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;->isEnabledMenuShowingInSetting()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSystemUserOnly(Ljava/lang/String;)Z
    .locals 0

    .line 522
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->mMetaDataHashMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;

    if-eqz p0, :cond_0

    .line 523
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;->isSystemUserOnly()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$loadAllMetaData$0$FaceWidgetMetadataParser()V
    .locals 4

    .line 181
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "FaceWidgetMetadataParser"

    if-nez v0, :cond_0

    const-string p0, "loadAllMetaData  no pkgMgr"

    .line 183
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 v2, 0x80

    .line 187
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 188
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    .line 193
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 194
    invoke-direct {p0, v1}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->getMetaDataInfoList(Landroid/content/pm/ApplicationInfo;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 195
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 199
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;

    .line 200
    invoke-virtual {v2}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->addMetaDataInfo(Ljava/lang/String;Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;)V

    goto :goto_1

    .line 204
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->updateOrderDB()V

    return-void

    :cond_5
    :goto_2
    const-string p0, "loadAllMetaData packages is empty"

    .line 189
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public loadAllMetaData(Ljava/lang/Runnable;)V
    .locals 5

    const-string v0, "FaceWidgetMetadataParser"

    const-string v1, "loadAllMetaData()"

    .line 165
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->mMetaDataHashMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    const-string p0, "loadAllMetaData() return : The data is already configured."

    .line 168
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 170
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    .line 175
    :cond_1
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->setIsSystemUser(Z)V

    .line 177
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->mMetaDataHashMap:Ljava/util/HashMap;

    .line 179
    invoke-static {}, Lcom/android/systemui/util/SimpleAsyncTask;->getNewInstance()Lcom/android/systemui/util/SimpleAsyncTask;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Runnable;

    new-instance v4, Lcom/android/systemui/facewidget/pages/remoteviews/-$$Lambda$FaceWidgetMetadataParser$6B2u5XtPn2SDZw0OFd7SkzOVHhk;

    invoke-direct {v4, p0}, Lcom/android/systemui/facewidget/pages/remoteviews/-$$Lambda$FaceWidgetMetadataParser$6B2u5XtPn2SDZw0OFd7SkzOVHhk;-><init>(Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;)V

    aput-object v4, v3, v2

    aput-object p1, v3, v1

    invoke-virtual {v0, v3}, Lcom/android/systemui/util/SimpleAsyncTask;->submit([Ljava/lang/Runnable;)V

    .line 207
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public setIsSystemUser(Z)V
    .locals 2

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIsSystemUser "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceWidgetMetadataParser"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iput-boolean p1, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->mIsSystemUser:Z

    return-void
.end method

.method public updateFaceWidgetInSettingMenu()V
    .locals 8

    const-string v0, "FaceWidgetMetadataParser"

    const-string/jumbo v1, "updateFaceWidgetInSettingMenu()"

    .line 107
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->mMetaDataHashMap:Ljava/util/HashMap;

    if-nez v1, :cond_0

    return-void

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->mSettingsHelper:Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->getPagesOrderForCurrentUser()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 115
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_6

    .line 116
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v5, ";"

    .line 117
    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 119
    iget-object v5, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->mMetaDataHashMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 120
    iget-object v7, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->mMetaDataHashMap:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;

    .line 122
    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 123
    invoke-virtual {v7}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;->isEnabledMenuShowingInSetting()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v7}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;->isSystemUserOnly()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->mIsSystemUser:Z

    if-nez v6, :cond_4

    goto :goto_0

    .line 126
    :cond_2
    invoke-virtual {v7}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;->isEnabledMenuShowingInSetting()Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    :goto_0
    move v2, v4

    :cond_4
    if-eqz v2, :cond_1

    :cond_5
    move v4, v2

    .line 138
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "face_widget_order : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->updateSettingsObserver()V

    if-eqz v4, :cond_7

    .line 143
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->updateOrderDB()V

    :cond_7
    return-void
.end method

.method public updateOrderDB()V
    .locals 9

    const-string v0, "FaceWidgetMetadataParser"

    const-string/jumbo v1, "updateOrderDB"

    .line 436
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->mSettingsHelper:Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->getFaceWidgetPageOrderList()Ljava/util/List;

    move-result-object v1

    .line 439
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 441
    iget-object v3, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->mMetaDataHashMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 442
    iget-object v5, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->mMetaDataHashMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;

    .line 443
    invoke-virtual {v5}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;->isEnabledMenuShowingInSetting()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 445
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    :cond_1
    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz v5, :cond_0

    .line 448
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 453
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_1
    if-ltz v3, :cond_4

    .line 454
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "servicebox_"

    .line 455
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 456
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 460
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 461
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 463
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 464
    iget-object v6, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->mMetaDataHashMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;

    if-eqz v6, :cond_5

    .line 465
    invoke-virtual {v6}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;->isSystemUserOnly()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-boolean v7, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->mIsSystemUser:Z

    if-nez v7, :cond_5

    new-array v6, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    const-string/jumbo v5, "updateOrderDB [%s] is disabled in current user"

    .line 466
    invoke-static {v0, v5, v6}, Lcom/android/systemui/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    const-string v7, ";"

    if-eqz v6, :cond_7

    .line 471
    invoke-virtual {v6}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;->getTitleResId()I

    move-result v8

    if-lez v8, :cond_7

    .line 472
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_6

    .line 473
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    :cond_6
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;->getTitleResId()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 478
    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_8

    .line 479
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    :cond_8
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 484
    :cond_9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_a

    .line 485
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->mSettingsHelper:Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->saveCurrentFaceWidgetResourceIds(Ljava/lang/String;)V

    .line 488
    :cond_a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_b

    .line 489
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->mSettingsHelper:Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->saveCurrentFaceWidgetsOrder(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public useAdditionInfo(Ljava/lang/String;)Z
    .locals 0

    .line 527
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->mMetaDataHashMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;

    if-eqz p0, :cond_0

    .line 528
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;->useAdditionalInfo()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
