.class public final synthetic Lcom/android/systemui/facewidget/-$$Lambda$DvA8_YkkjtbEdIoFBhi8s9nb1vE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/facewidget/-$$Lambda$DvA8_YkkjtbEdIoFBhi8s9nb1vE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/facewidget/-$$Lambda$DvA8_YkkjtbEdIoFBhi8s9nb1vE;

    invoke-direct {v0}, Lcom/android/systemui/facewidget/-$$Lambda$DvA8_YkkjtbEdIoFBhi8s9nb1vE;-><init>()V

    sput-object v0, Lcom/android/systemui/facewidget/-$$Lambda$DvA8_YkkjtbEdIoFBhi8s9nb1vE;->INSTANCE:Lcom/android/systemui/facewidget/-$$Lambda$DvA8_YkkjtbEdIoFBhi8s9nb1vE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;

    invoke-virtual {p1}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->isEnabledChangeToCurrent()Z

    move-result p0

    return p0
.end method
