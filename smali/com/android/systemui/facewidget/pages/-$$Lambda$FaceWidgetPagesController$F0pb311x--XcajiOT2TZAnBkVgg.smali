.class public final synthetic Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$F0pb311x--XcajiOT2TZAnBkVgg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/io/FileDescriptor;

.field private final synthetic f$1:Ljava/io/PrintWriter;

.field private final synthetic f$2:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$F0pb311x--XcajiOT2TZAnBkVgg;->f$0:Ljava/io/FileDescriptor;

    iput-object p2, p0, Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$F0pb311x--XcajiOT2TZAnBkVgg;->f$1:Ljava/io/PrintWriter;

    iput-object p3, p0, Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$F0pb311x--XcajiOT2TZAnBkVgg;->f$2:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$F0pb311x--XcajiOT2TZAnBkVgg;->f$0:Ljava/io/FileDescriptor;

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$F0pb311x--XcajiOT2TZAnBkVgg;->f$1:Ljava/io/PrintWriter;

    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$F0pb311x--XcajiOT2TZAnBkVgg;->f$2:[Ljava/lang/String;

    check-cast p1, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;

    invoke-static {v0, v1, p0, p1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->lambda$dump$14(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Lcom/android/systemui/facewidget/pages/FaceWidgetPage;)V

    return-void
.end method
