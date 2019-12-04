.class public final synthetic Lcom/android/systemui/facewidget/-$$Lambda$2QV0OZZ8U2xhf8To0enQMLbASdE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/facewidget/-$$Lambda$2QV0OZZ8U2xhf8To0enQMLbASdE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/facewidget/-$$Lambda$2QV0OZZ8U2xhf8To0enQMLbASdE;

    invoke-direct {v0}, Lcom/android/systemui/facewidget/-$$Lambda$2QV0OZZ8U2xhf8To0enQMLbASdE;-><init>()V

    sput-object v0, Lcom/android/systemui/facewidget/-$$Lambda$2QV0OZZ8U2xhf8To0enQMLbASdE;->INSTANCE:Lcom/android/systemui/facewidget/-$$Lambda$2QV0OZZ8U2xhf8To0enQMLbASdE;

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

    check-cast p1, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;

    invoke-virtual {p1}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataInfo;->getPkgName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
