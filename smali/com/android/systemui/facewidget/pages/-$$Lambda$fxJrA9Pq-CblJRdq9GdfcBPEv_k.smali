.class public final synthetic Lcom/android/systemui/facewidget/pages/-$$Lambda$fxJrA9Pq-CblJRdq9GdfcBPEv_k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/facewidget/pages/-$$Lambda$fxJrA9Pq-CblJRdq9GdfcBPEv_k;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/facewidget/pages/-$$Lambda$fxJrA9Pq-CblJRdq9GdfcBPEv_k;

    invoke-direct {v0}, Lcom/android/systemui/facewidget/pages/-$$Lambda$fxJrA9Pq-CblJRdq9GdfcBPEv_k;-><init>()V

    sput-object v0, Lcom/android/systemui/facewidget/pages/-$$Lambda$fxJrA9Pq-CblJRdq9GdfcBPEv_k;->INSTANCE:Lcom/android/systemui/facewidget/pages/-$$Lambda$fxJrA9Pq-CblJRdq9GdfcBPEv_k;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;

    invoke-virtual {p1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->onLockModeChanged()V

    return-void
.end method
