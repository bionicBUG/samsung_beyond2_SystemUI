.class public Lcom/android/systemui/facewidget/pages/FaceWidgetPage$InternalHandler;
.super Landroid/os/Handler;
.source "FaceWidgetPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/facewidget/pages/FaceWidgetPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "InternalHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 781
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/facewidget/pages/FaceWidgetPage$1;)V
    .locals 0

    .line 778
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage$InternalHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelPrevious(Ljava/lang/Object;)Lcom/android/systemui/facewidget/pages/FaceWidgetPage$InternalHandler;
    .locals 0

    .line 785
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-object p0
.end method
