.class public final synthetic Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$2$eIu8yffSRns-3Qzq7bKr10VGr9g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$2$eIu8yffSRns-3Qzq7bKr10VGr9g;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$2$eIu8yffSRns-3Qzq7bKr10VGr9g;

    invoke-direct {v0}, Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$2$eIu8yffSRns-3Qzq7bKr10VGr9g;-><init>()V

    sput-object v0, Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$2$eIu8yffSRns-3Qzq7bKr10VGr9g;->INSTANCE:Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$2$eIu8yffSRns-3Qzq7bKr10VGr9g;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;

    invoke-static {p1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController$2;->lambda$onRefreshCarrierInfo$0(Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method
