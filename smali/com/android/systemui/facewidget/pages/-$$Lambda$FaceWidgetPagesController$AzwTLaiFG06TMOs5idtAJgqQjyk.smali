.class public final synthetic Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$AzwTLaiFG06TMOs5idtAJgqQjyk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$AzwTLaiFG06TMOs5idtAJgqQjyk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$AzwTLaiFG06TMOs5idtAJgqQjyk;

    invoke-direct {v0}, Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$AzwTLaiFG06TMOs5idtAJgqQjyk;-><init>()V

    sput-object v0, Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$AzwTLaiFG06TMOs5idtAJgqQjyk;->INSTANCE:Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$AzwTLaiFG06TMOs5idtAJgqQjyk;

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

    invoke-static {p1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->lambda$setOrientation$6(Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method
