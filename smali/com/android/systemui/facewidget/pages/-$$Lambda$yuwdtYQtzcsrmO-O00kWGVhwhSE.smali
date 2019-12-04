.class public final synthetic Lcom/android/systemui/facewidget/pages/-$$Lambda$yuwdtYQtzcsrmO-O00kWGVhwhSE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/facewidget/pages/-$$Lambda$yuwdtYQtzcsrmO-O00kWGVhwhSE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/facewidget/pages/-$$Lambda$yuwdtYQtzcsrmO-O00kWGVhwhSE;

    invoke-direct {v0}, Lcom/android/systemui/facewidget/pages/-$$Lambda$yuwdtYQtzcsrmO-O00kWGVhwhSE;-><init>()V

    sput-object v0, Lcom/android/systemui/facewidget/pages/-$$Lambda$yuwdtYQtzcsrmO-O00kWGVhwhSE;->INSTANCE:Lcom/android/systemui/facewidget/pages/-$$Lambda$yuwdtYQtzcsrmO-O00kWGVhwhSE;

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

    check-cast p1, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;

    invoke-static {p1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
