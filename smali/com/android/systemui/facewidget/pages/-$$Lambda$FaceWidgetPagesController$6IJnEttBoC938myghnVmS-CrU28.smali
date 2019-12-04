.class public final synthetic Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$6IJnEttBoC938myghnVmS-CrU28;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$6IJnEttBoC938myghnVmS-CrU28;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$6IJnEttBoC938myghnVmS-CrU28;

    invoke-direct {v0}, Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$6IJnEttBoC938myghnVmS-CrU28;-><init>()V

    sput-object v0, Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$6IJnEttBoC938myghnVmS-CrU28;->INSTANCE:Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$6IJnEttBoC938myghnVmS-CrU28;

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

    invoke-static {p1, p2}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->lambda$getAllRemoteViewsItem$11(Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;)I

    move-result p0

    return p0
.end method
