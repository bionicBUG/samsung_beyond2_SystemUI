.class public Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;
.super Ljava/lang/Object;
.source "FaceWidgetMetadataInfo.java"


# instance fields
.field private final mDbKey:Ljava/lang/String;

.field private final mIsChangeCurrentPage:Z

.field private final mIsPermissionGranted:Z

.field private final mIsSystemUserOnly:Z

.field private final mMenuInSetting:I

.field private final mPageId:Ljava/lang/String;

.field private final mPkgName:Ljava/lang/String;

.field private final mTitleResId:I

.field private final mUseAdditionalInfo:Z


# direct methods
.method private constructor <init>()V
    .locals 9

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    .line 35
    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZZ)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    .line 40
    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZZZ)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZZ)V
    .locals 10

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 51
    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZZZ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZZZ)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;->mPkgName:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;->mDbKey:Ljava/lang/String;

    .line 60
    iput p4, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;->mTitleResId:I

    .line 61
    iput-object p2, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;->mPageId:Ljava/lang/String;

    .line 62
    iput p5, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;->mMenuInSetting:I

    .line 63
    iput-boolean p6, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;->mIsChangeCurrentPage:Z

    .line 64
    iput-boolean p7, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;->mIsPermissionGranted:Z

    .line 65
    iput-boolean p8, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;->mUseAdditionalInfo:Z

    .line 66
    iput-boolean p9, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;->mIsSystemUserOnly:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 10

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v9, p5

    .line 45
    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZZZ)V

    return-void
.end method


# virtual methods
.method public getDbKey()Ljava/lang/String;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;->mDbKey:Ljava/lang/String;

    return-object p0
.end method

.method public getPageId()Ljava/lang/String;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;->mPageId:Ljava/lang/String;

    return-object p0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;->mPkgName:Ljava/lang/String;

    return-object p0
.end method

.method public getTitleResId()I
    .locals 0

    .line 90
    iget p0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;->mTitleResId:I

    return p0
.end method

.method public isChangeCurrentPage()Z
    .locals 0

    .line 106
    iget-boolean p0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;->mIsChangeCurrentPage:Z

    return p0
.end method

.method public isDefaultOnMenuInSetting()Z
    .locals 1

    .line 102
    iget p0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;->mMenuInSetting:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabledMenuShowingInSetting()Z
    .locals 1

    .line 94
    iget p0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;->mMenuInSetting:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public isPermissionGranted()Z
    .locals 0

    .line 110
    iget-boolean p0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;->mIsPermissionGranted:Z

    return p0
.end method

.method public isSystemUserOnly()Z
    .locals 0

    .line 98
    iget-boolean p0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;->mIsSystemUserOnly:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    .line 71
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;->mPkgName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;->mPageId:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;->mDbKey:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;->mTitleResId:I

    .line 73
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;->mMenuInSetting:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;->mIsChangeCurrentPage:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;->mIsPermissionGranted:Z

    .line 74
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;->mUseAdditionalInfo:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-boolean p0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;->mIsSystemUserOnly:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/16 v1, 0x8

    aput-object p0, v0, v1

    const-string p0, "pkg[%s] pageId[%s] key[%s] res[%d] menu[%d] chgCur[%s] granted[%s] addition[%s] systemUserOnly[%s]"

    .line 72
    invoke-static {p0, v0}, Lcom/android/systemui/util/LogUtil;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public useAdditionalInfo()Z
    .locals 0

    .line 114
    iget-boolean p0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;->mUseAdditionalInfo:Z

    return p0
.end method
