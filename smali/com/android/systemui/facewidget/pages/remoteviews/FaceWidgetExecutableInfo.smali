.class public Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetExecutableInfo;
.super Ljava/lang/Object;
.source "FaceWidgetExecutableInfo.java"


# instance fields
.field additionalInfo:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "additionalInfo"
    .end annotation
.end field

.field changeCurrentPage:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "changeCurrentPage"
    .end annotation
.end field

.field labelResName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "labelResNameInSetting"
    .end annotation
.end field

.field menuInSetting:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "menuInSetting"
    .end annotation
.end field

.field systemUserOnly:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "systemUserOnly"
    .end annotation
.end field

.field type:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 21
    iget v1, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetExecutableInfo;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetExecutableInfo;->systemUserOnly:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetExecutableInfo;->menuInSetting:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetExecutableInfo;->changeCurrentPage:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetExecutableInfo;->labelResName:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean p0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetExecutableInfo;->additionalInfo:Z

    .line 22
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v1, 0x5

    aput-object p0, v0, v1

    const-string p0, "%d %s %d %s %s %s"

    .line 21
    invoke-static {p0, v0}, Lcom/android/systemui/util/LogUtil;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
