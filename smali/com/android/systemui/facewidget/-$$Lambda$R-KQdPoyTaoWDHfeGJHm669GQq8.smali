.class public final synthetic Lcom/android/systemui/facewidget/-$$Lambda$R-KQdPoyTaoWDHfeGJHm669GQq8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/facewidget/-$$Lambda$R-KQdPoyTaoWDHfeGJHm669GQq8;->f$0:Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/-$$Lambda$R-KQdPoyTaoWDHfeGJHm669GQq8;->f$0:Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->isEnabledChangeCurrentPage(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
