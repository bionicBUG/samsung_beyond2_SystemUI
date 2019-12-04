.class public final synthetic Lcom/android/systemui/facewidget/-$$Lambda$FaceWidgetContainer$B_1nonVxFnCEWsgkZYk9NdzaJVE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/facewidget/-$$Lambda$FaceWidgetContainer$B_1nonVxFnCEWsgkZYk9NdzaJVE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/facewidget/-$$Lambda$FaceWidgetContainer$B_1nonVxFnCEWsgkZYk9NdzaJVE;

    invoke-direct {v0}, Lcom/android/systemui/facewidget/-$$Lambda$FaceWidgetContainer$B_1nonVxFnCEWsgkZYk9NdzaJVE;-><init>()V

    sput-object v0, Lcom/android/systemui/facewidget/-$$Lambda$FaceWidgetContainer$B_1nonVxFnCEWsgkZYk9NdzaJVE;->INSTANCE:Lcom/android/systemui/facewidget/-$$Lambda$FaceWidgetContainer$B_1nonVxFnCEWsgkZYk9NdzaJVE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;

    check-cast p2, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;

    invoke-static {p1, p2}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->lambda$getPackageNameChangeToCurrentFromRemoteViews$9(Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;)I

    move-result p0

    return p0
.end method
