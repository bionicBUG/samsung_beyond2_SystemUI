.class public Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;
.super Ljava/lang/Object;
.source "FaceWidgetPageItem.java"


# instance fields
.field private mIsInternalPage:Z

.field protected mPackageName:Ljava/lang/String;

.field private mPageCacheMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/systemui/facewidget/pages/FaceWidgetPageLocation;",
            "Lcom/android/systemui/facewidget/pages/FaceWidgetPage;",
            ">;"
        }
    .end annotation
.end field

.field private mPageResId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;->mPageCacheMap:Ljava/util/HashMap;

    .line 36
    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;->mPackageName:Ljava/lang/String;

    .line 37
    iput-boolean p3, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;->mIsInternalPage:Z

    .line 38
    iput p2, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;->mPageResId:I

    return-void
.end method


# virtual methods
.method public getAllPagesStream()Ljava/util/stream/Stream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Lcom/android/systemui/facewidget/pages/FaceWidgetPage;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public getCreatedTime()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLastUpdatedTime()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getPageView(Landroid/content/Context;Lcom/android/systemui/facewidget/pages/FaceWidgetPageLocation;)Lcom/android/systemui/facewidget/pages/FaceWidgetPage;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;

    if-eqz v0, :cond_0

    return-object v0

    .line 51
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;->inflatePage(Landroid/content/Context;)Lcom/android/systemui/facewidget/pages/FaceWidgetPage;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 55
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-class p0, Lcom/android/systemui/facewidget/FaceWidgetController;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/facewidget/FaceWidgetController;

    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->setFaceWidgetController(Lcom/android/systemui/facewidget/FaceWidgetController;Lcom/android/systemui/facewidget/pages/FaceWidgetPageLocation;)V

    .line 58
    sget-object p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->SMALL:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->setPageState(Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;Z)V

    return-object p1

    .line 53
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "page is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected inflatePage(Landroid/content/Context;)Lcom/android/systemui/facewidget/pages/FaceWidgetPage;
    .locals 1

    .line 67
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;->mPageResId:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;

    return-object p0
.end method

.method public isInternalPage()Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;->mIsInternalPage:Z

    return p0
.end method

.method public setCreatedTime(J)V
    .locals 0

    return-void
.end method
