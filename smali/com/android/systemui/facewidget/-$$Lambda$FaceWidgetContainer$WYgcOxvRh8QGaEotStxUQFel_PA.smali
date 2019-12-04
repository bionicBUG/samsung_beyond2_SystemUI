.class public final synthetic Lcom/android/systemui/facewidget/-$$Lambda$FaceWidgetContainer$WYgcOxvRh8QGaEotStxUQFel_PA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/facewidget/-$$Lambda$FaceWidgetContainer$WYgcOxvRh8QGaEotStxUQFel_PA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/facewidget/-$$Lambda$FaceWidgetContainer$WYgcOxvRh8QGaEotStxUQFel_PA;

    invoke-direct {v0}, Lcom/android/systemui/facewidget/-$$Lambda$FaceWidgetContainer$WYgcOxvRh8QGaEotStxUQFel_PA;-><init>()V

    sput-object v0, Lcom/android/systemui/facewidget/-$$Lambda$FaceWidgetContainer$WYgcOxvRh8QGaEotStxUQFel_PA;->INSTANCE:Lcom/android/systemui/facewidget/-$$Lambda$FaceWidgetContainer$WYgcOxvRh8QGaEotStxUQFel_PA;

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

    check-cast p1, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;

    check-cast p2, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;

    invoke-static {p1, p2}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->lambda$updateAdditionalInfoView$5(Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;)I

    move-result p0

    return p0
.end method
