.class public Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage$ClockTypeResult;
.super Ljava/lang/Object;
.source "FaceWidgetClockPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClockTypeResult"
.end annotation


# instance fields
.field public clockType:I

.field private isThemeImageClock:Z

.field private shouldShowDefaultClock:Z

.field private shouldShowDualClock:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage$ClockTypeResult;)Z
    .locals 0

    .line 403
    iget-boolean p0, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage$ClockTypeResult;->isThemeImageClock:Z

    return p0
.end method

.method static synthetic access$002(Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage$ClockTypeResult;Z)Z
    .locals 0

    .line 403
    iput-boolean p1, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage$ClockTypeResult;->isThemeImageClock:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage$ClockTypeResult;)Z
    .locals 0

    .line 403
    iget-boolean p0, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage$ClockTypeResult;->shouldShowDualClock:Z

    return p0
.end method

.method static synthetic access$102(Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage$ClockTypeResult;Z)Z
    .locals 0

    .line 403
    iput-boolean p1, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage$ClockTypeResult;->shouldShowDualClock:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage$ClockTypeResult;)Z
    .locals 0

    .line 403
    iget-boolean p0, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage$ClockTypeResult;->shouldShowDefaultClock:Z

    return p0
.end method

.method static synthetic access$202(Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage$ClockTypeResult;Z)Z
    .locals 0

    .line 403
    iput-boolean p1, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage$ClockTypeResult;->shouldShowDefaultClock:Z

    return p1
.end method
