.class public Lcom/android/systemui/facewidget/pages/clock/FaceWidgetCloneClockPage;
.super Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;
.source "FaceWidgetCloneClockPage.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FaceWidgetCloneClockPage"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetCloneClockPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetCloneClockPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .locals 0

    const-string p0, "clone_clock"

    return-object p0
.end method

.method public bridge synthetic getTag()Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetCloneClockPage;->getTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetCloneClockPage;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->isFullScreenMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "_Full"

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isCloneClock()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected onPageTransitionEnded()V
    .locals 0

    return-void
.end method
