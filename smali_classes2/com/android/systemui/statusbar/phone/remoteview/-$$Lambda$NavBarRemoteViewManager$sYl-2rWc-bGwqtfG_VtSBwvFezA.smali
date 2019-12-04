.class public final synthetic Lcom/android/systemui/statusbar/phone/remoteview/-$$Lambda$NavBarRemoteViewManager$sYl-2rWc-bGwqtfG_VtSBwvFezA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/statusbar/phone/remoteview/-$$Lambda$NavBarRemoteViewManager$sYl-2rWc-bGwqtfG_VtSBwvFezA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/remoteview/-$$Lambda$NavBarRemoteViewManager$sYl-2rWc-bGwqtfG_VtSBwvFezA;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/remoteview/-$$Lambda$NavBarRemoteViewManager$sYl-2rWc-bGwqtfG_VtSBwvFezA;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/remoteview/-$$Lambda$NavBarRemoteViewManager$sYl-2rWc-bGwqtfG_VtSBwvFezA;->INSTANCE:Lcom/android/systemui/statusbar/phone/remoteview/-$$Lambda$NavBarRemoteViewManager$sYl-2rWc-bGwqtfG_VtSBwvFezA;

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

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->lambda$getNavbarRemoteView$3(Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;)I

    move-result p0

    return p0
.end method
