.class public final synthetic Lcom/android/systemui/statusbar/phone/remoteview/-$$Lambda$NavBarRemoteViewManager$fHywZmqXaczM7LRjSOVaAw4uMzM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/statusbar/phone/remoteview/-$$Lambda$NavBarRemoteViewManager$fHywZmqXaczM7LRjSOVaAw4uMzM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/remoteview/-$$Lambda$NavBarRemoteViewManager$fHywZmqXaczM7LRjSOVaAw4uMzM;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/remoteview/-$$Lambda$NavBarRemoteViewManager$fHywZmqXaczM7LRjSOVaAw4uMzM;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/remoteview/-$$Lambda$NavBarRemoteViewManager$fHywZmqXaczM7LRjSOVaAw4uMzM;->INSTANCE:Lcom/android/systemui/statusbar/phone/remoteview/-$$Lambda$NavBarRemoteViewManager$fHywZmqXaczM7LRjSOVaAw4uMzM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->lambda$getNavbarRemoteView$0(Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;)I

    move-result p0

    return p0
.end method
